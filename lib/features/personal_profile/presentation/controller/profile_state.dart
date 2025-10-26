part of 'profile_bloc.dart';

abstract class ProfileState {}

class InitialState extends ProfileState {}

class EditState extends ProfileState {}

class SaveState extends ProfileState {}

class GetStudentDataLoadingState extends ProfileState {}

class GetStudentDataSuccessState extends ProfileState {
  final ProfileModel studentModel;
  GetStudentDataSuccessState({required this.studentModel});
}

class GetStudentDataErrorState extends ProfileState {
  final String error;
  GetStudentDataErrorState({required this.error});
}
