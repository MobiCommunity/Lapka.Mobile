import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lapka/models/new_user_data.dart';
import 'package:lapka/repository/api_result.dart';
import 'package:lapka/repository/identity_api/authentication/authentication_repository.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/user/auth_user_store.dart';
import 'package:lapka/utils/broadcasters/auth_broadcaster.dart';

part 'register_bloc.freezed.dart';

part 'register_event.dart';

part 'register_state.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  AuthenticationRepository _repository;
  AuthUserStore _authUserStore;
  AuthBroadcaster _authBroadcaster;

  RegisterBloc(this._repository, this._authUserStore, this._authBroadcaster)
      : super(_Idle());

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    if (event is _SingUp) {
      yield _SigningUp();
      yield* _handleSignUp(event);
    }
  }

  Stream<RegisterState> _handleSignUp(_SingUp event) async* {
    final ApiResult<void> result = await _repository.signUp(
      NewUserData(
        username: event.username,
        firstName: event.firstName,
        lastName: event.lastName,
        email: event.email,
        password: event.password,
      ),
    );

    yield* result.when(
      success: (_) async* {
        yield _Success();
      },
      failure: (NetworkExceptions error) async* {
        yield* _handleFailure(error);
      },
    );
  }

  Stream<RegisterState> _handleFailure(NetworkExceptions error) async* {
    yield _Error(error);
  }
}
