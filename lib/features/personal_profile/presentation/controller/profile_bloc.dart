import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/profile_model/profile_model.dart';
import '../../data/repo/personal_profile_repo.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final PersonalProfileRepo _personalProfileRepo;

  ProfileBloc({required PersonalProfileRepo studentRepo})
    : _personalProfileRepo = studentRepo,
      super(GetProfileDataLoading()) {
    on<GetData>(_onGetData);
    on<EditData>(_onEnableEditing);
    on<SaveData>(_onSaveData);
  }

  FutureOr<void> _onSaveData(SaveData event, Emitter<ProfileState> emit) {
    emit(ProfileSaveLoading());
    //_personalProfileRepo.updateProfile(event.updatedProfileModel);
    emit(
      GetProfileDataSuccessfully(
        profileModel: event.updatedProfileModel,
        isEditing: false,
      ),
    );
  }

  FutureOr<void> _onGetData(GetData event, Emitter<ProfileState> emit) async {
    emit(GetProfileDataLoading());
    await _personalProfileRepo
        .getUserProfile()
        .then(
          (user) => emit(
            GetProfileDataSuccessfully(profileModel: user, isEditing: false),
          ),
        )
        .onError(
          (error, stackTrace) =>
              emit(GetProfileDataError(error: error.toString())),
        );
  }

  void _onEnableEditing(EditData event, Emitter<ProfileState> emit) {
    final ProfileState currentState = state;
    if (currentState is GetProfileDataSuccessfully) {
      // Emit a copy of the current state, but flip the 'isEditing' flag
      emit(currentState.copyWith(isEditing: !currentState.isEditing));
    }
  }
}
