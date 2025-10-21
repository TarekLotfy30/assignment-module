part of 'profile_bloc.dart';

sealed class ProfileState {}

final class InitialState extends ProfileState {}

final class EditState extends ProfileState {}

final class SaveState extends ProfileState {}
