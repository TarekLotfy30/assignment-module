import 'package:bloc/bloc.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(InitialState()) {
    on<EditData>((event, emit) => emit(EditState()));
    on<SaveData>((event, emit) => emit(SaveState()));
  }
}
