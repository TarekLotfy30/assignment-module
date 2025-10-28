part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

final class GetData extends ProfileEvent {}

final class EditData extends ProfileEvent {}

final class SaveData extends ProfileEvent {
  final ProfileModel updatedProfileModel;
  const SaveData({required this.updatedProfileModel});

  @override
  List<Object> get props => [updatedProfileModel];
}
