import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lapka/components/dialogs/basic_dialog.dart';
import 'package:lapka/components/dialogs/exit_dialog.dart';
import 'package:lapka/screens/adopt_pet/adopt_pet_list_page.dart';

import 'bloc/navigator_bloc.dart';

class MyAppRouterDelegate extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final GlobalKey<NavigatorState> _navigatorKey;
    List<Page> stack = [];

  MyAppRouterDelegate() : _navigatorKey = GlobalKey<NavigatorState>() {
    _init();
  }

  @override
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  _init() {
    stack.add(MaterialPage(child: AdoptPetListPage()));
  }

  _pushPage(Page page) {
    stack.add(page);
    var old = stack;
    stack = [];
    old.forEach((element) {
      stack.add(element);
    });
  }

  _pop(BuildContext context, bool force) async {
    if (stack.length == 1) {
      bool result = await BasicDialog.showDialogCustom(context, ExitDialog());
      if (result) exit(0);
      return;
    }

    var old = stack;
    stack.removeAt(stack.length - 1);
    stack = [];
    old.forEach((element) {
      stack.add(element);
    });
  }

  _changeRoot(Page page){
    stack = [page];
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<NavigatorBloc, NavigatorMyState>(
        listener: (context, state) {
          state.when(
              initial: () {},
              push: (page) {
                _pushPage(page);
              },
              pop: (force) {
                _pop(context, force);
              },
              pushReplace: (page){
                _changeRoot(page);
              }
              );
          notifyListeners();
        },
        child: Navigator(
          key: navigatorKey,
          pages: stack,
          onPopPage: (route, result) {
            print('onPopDelegat');
            if (!route.didPop(result)) return false;
            return false;
          },
        ));
  }

  Future<void> setNewRoutePath(configuration) async {/* Do Nothing */}
}
