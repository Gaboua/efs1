part of 'login_cubit.dart';

class LoginState extends Equatable {
  final UserName userName;
  final Password password;
  final FormzStatus status;
  final String? errorMessage;

  const LoginState({
    this.userName = const UserName.pure(),
    this.password = const Password.pure(),
    this.status = FormzStatus.pure,
    this.errorMessage,
  });

  @override
  List<Object> get props => [userName, password, status];

  LoginState copyWith({
    UserName? userName,
    Password? password,
    FormzStatus? status,
    String? errorMessage,
  }) {
    return LoginState(
      userName: userName ?? this.userName,
      password: password ?? this.password,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
