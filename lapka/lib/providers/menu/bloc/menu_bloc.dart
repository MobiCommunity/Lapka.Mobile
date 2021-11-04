import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lapka/domain/auth/use_case/logout_use_case.dart';
import 'package:lapka/domain/user/use_case/fetch_user_data_use_case.dart';
import 'package:lapka/models/user.dart';
import 'package:lapka/repository/identity_api/user/user_repository.dart';
import 'package:lapka/services/user_service.dart';
import 'package:lapka/utils/broadcasters/auth_broadcaster.dart';

part 'menu_bloc.freezed.dart';

@freezed
class MenuBlocState with _$MenuBlocState {
  const factory MenuBlocState({
    @Default(AuthState.unauthenticated()) authState,
    User? user,
  }) = _MenuBlocState;
}

@injectable
class MenuBloc extends Cubit<MenuBlocState> {
  AuthBroadcaster _authBroadcaster;
  UserService _userService;
  FetchUserDataUseCase _fetchUserDataUseCase;

  late StreamSubscription _authBroadcasterSubscription;
  late StreamSubscription _userSubscription;

  MenuBloc(
    this._userService,
    this._authBroadcaster,
    this._fetchUserDataUseCase,
  ) : super(MenuBlocState(authState: AuthState.unauthenticated())) {
    _observeAuthState();
    _observeUser();
  }

  void _observeUser() {
    _userSubscription = _userService.observeUser().listen(
          (event) => emit(
            state.copyWith(user: event),
          ),
        );
  }

  void _observeAuthState() {
    _authBroadcasterSubscription = _authBroadcaster.state.listen((authState) {
      authState.when(
          authenticated: () {
            if (state.user == null) {
              _fetchUserData();
            }
          },
          unauthenticated: () {});

      emit(state.copyWith(authState: authState));
    });
  }

  void _fetchUserData() async {
    _fetchUserDataUseCase((await _userService.getUserId())!);
  }

  @override
  Future<void> close() {
    _authBroadcasterSubscription.cancel();
    _userSubscription.cancel();
    return super.close();
  }
}
