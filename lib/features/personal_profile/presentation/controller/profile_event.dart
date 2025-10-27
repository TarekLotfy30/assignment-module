part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

class EditData extends ProfileEvent {}

class SaveData extends ProfileEvent {}

class GetData extends ProfileEvent {}
