part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

class GetProfileDataLoading extends ProfileState {}

class GetProfileDataSuccessfully extends ProfileState {
  final ProfileModel profileModel;
  final bool isEditing;

  const GetProfileDataSuccessfully({
    required this.profileModel,
    this.isEditing = false,
  });

  GetProfileDataSuccessfully copyWith({
    ProfileModel? profileModel,
    bool? isEditing,
  }) {
    return GetProfileDataSuccessfully(
      profileModel: profileModel ?? this.profileModel,
      isEditing: isEditing ?? this.isEditing,
    );
  }

  @override
  List<Object> get props => [profileModel, isEditing];
}

class GetProfileDataError extends ProfileState {
  final String error;
  const GetProfileDataError({required this.error});

  @override
  List<Object> get props => [error];
}

class ProfileSaveLoading extends ProfileState {}

class ProfileSaveError extends ProfileState {
  final String error;
  const ProfileSaveError({required this.error});
}
