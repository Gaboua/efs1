import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:efs1/Repository/authentication/authenticationRepository.dart';
import 'package:efs1/Repository/authentication/user.dart';
import 'package:equatable/equatable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationRepository _authenticationRepository;
  late final StreamSubscription<User> _userSubscription;
  AuthenticationBloc(
      {required AuthenticationRepository authenticationRepository})
      : _authenticationRepository = authenticationRepository,
        super(authenticationRepository.currentUser.isNotEmpty
            ? AuthenticationState.authenticated(
                authenticationRepository.currentUser)
            : const AuthenticationState.unauthenticated()) {
    on<AuthenticationUserChanged>((event, emit) {
      emit(
        event.user.isNotEmpty
            ? AuthenticationState.authenticated(event.user)
            : const AuthenticationState.unauthenticated(),
      );
    });
    on<AuthenticationLogoutRequested>((event, emit) {
      unawaited(_authenticationRepository.logOut());
    });
    _userSubscription = _authenticationRepository.user.listen(
      (user) => add(AuthenticationUserChanged(user)),
    );
  }
  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
