import 'package:bloc/bloc.dart';

import '../helpers/classes/app_logger.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    Logger.info('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    Logger.info('onEvent -- ${bloc.runtimeType}, $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    Logger.success('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    Logger.info('onTransition -- ${bloc.runtimeType}, $transition');
  }

  @override
  void onDone(
    Bloc bloc,
    Object? event, [
    Object? error,
    StackTrace? stackTrace,
  ]) {
    super.onDone(bloc, event, error, stackTrace);
    Logger.info('onDone -- ${bloc.runtimeType}, $event, $error');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    Logger.error('onError -- ${bloc.runtimeType}, $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    Logger.warning('onClose -- ${bloc.runtimeType}');
  }
}
