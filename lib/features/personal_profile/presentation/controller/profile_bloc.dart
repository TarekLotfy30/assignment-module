import 'package:bloc/bloc.dart';

import '../../data/models/profile_model/profile_model.dart';
import '../../data/repo/personal_profile_repo.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final PersonalProfileRepo _studentRepo;

  ProfileBloc({required PersonalProfileRepo studentRepo})
    : _studentRepo = studentRepo,
      super(InitialState()) {
    on<EditData>((event, emit) => emit(EditState()));
    on<SaveData>((event, emit) => emit(SaveState()));
    on<GetData>((event, emit) async {
      emit(GetStudentDataLoadingState());
      await _studentRepo
          .getStudent()
          .then(
            (student) =>
                emit(GetStudentDataSuccessState(studentModel: student)),
          )
          .onError(
            (error, stackTrace) =>
                emit(GetStudentDataErrorState(error: error.toString())),
          );
    });
  }
}
