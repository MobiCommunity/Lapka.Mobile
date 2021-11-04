import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/navigator_bloc.dart';

class NavigatorHelper {
  static pop(BuildContext context, {bool force = false}) {
    BlocProvider.of<NavigatorBloc>(context).add(NavigatorEvent.popPage(force));
  }

  static push(BuildContext context, Widget page) {
    BlocProvider.of<NavigatorBloc>(context).add(NavigatorEvent.pushPage(page));
  }

  static changeRoot(BuildContext context, Widget page) {
    BlocProvider.of<NavigatorBloc>(context)
        .add(NavigatorEvent.pushReplace(page));
  }
}
