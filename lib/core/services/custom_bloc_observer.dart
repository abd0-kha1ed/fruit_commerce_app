import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

/*************  ✨ Windsurf Command ⭐  *************/
class CustomBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    log('${bloc.runtimeType} $change');
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}
/*******  0f62dd1e-9103-4325-b8db-35b64aaa54b5  *******/  