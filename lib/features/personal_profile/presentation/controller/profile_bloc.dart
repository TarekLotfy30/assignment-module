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
      super(ProfileInitial()) {
    on<EditData>((event, emit) => emit(ProfileEditing()));
    on<SaveData>((event, emit) => emit(ProfileSaveSuccess()));
    on<GetData>((event, emit) async {
      emit(ProfileLoading());
      await _personalProfileRepo
          .getUserProfile()
          .then((user) => emit(ProfileLoaded(profileModel: user)))
          .onError(
            (error, stackTrace) => emit(ProfileError(error: error.toString())),
          );
    });
  }
}
