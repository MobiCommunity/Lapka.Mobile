import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigator_event.dart';
part 'navigator_state.dart';
part 'navigator_bloc.freezed.dart';

class NavigatorBloc extends Bloc<NavigatorEvent, NavigatorMyState> {
  NavigatorBloc() : super(_Initial());

  @override
  Stream<NavigatorMyState> mapEventToState(
    NavigatorEvent event,
  ) async* {
    if (event is _PushPage) {
      yield NavigatorMyState.push(MaterialPage(child: event.page));
      yield NavigatorMyState.initial();
    } else if (event is _PopPage) {
      yield NavigatorMyState.pop(event.force);
      yield NavigatorMyState.initial();
    } else if (event is _PushReplacePage) {
      yield NavigatorMyState.pushReplace(MaterialPage(child: event.page));
      yield NavigatorMyState.initial();
    }
  }
}
