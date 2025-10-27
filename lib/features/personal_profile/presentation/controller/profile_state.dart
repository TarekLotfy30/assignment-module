part of 'profile_bloc.dart';

sealed class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

final class ProfileInitial extends ProfileState {}

final class ProfileLoading extends ProfileState {}

final class ProfileLoaded extends ProfileState {
  final ProfileModel profileModel;
  const ProfileLoaded({required this.profileModel});

  @override
  List<Object> get props => [profileModel];
}

final class ProfileError extends ProfileState {
  final String error;
  const ProfileError({required this.error});

  @override
  List<Object> get props => [error];
}

final class ProfileEditing extends ProfileState {}

final class ProfileSaveLoading extends ProfileState {}

final class ProfileSaveSuccess extends ProfileState {}

final class ProfileSaveError extends ProfileState {
  final String error;
  const ProfileSaveError({required this.error});

  @override
  List<Object> get props => [error];
}
