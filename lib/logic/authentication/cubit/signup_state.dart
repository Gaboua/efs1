part of 'signup_cubit.dart';

enum ConfirmPasswordValidationError { invalid }

class SignUpState extends Equatable {
  final UserName userName;
  final Email email;
  final Phone phone;
  final Password password;
  final ConfirmPassword confirmedPassword;
  final FingerCode fingerCode;
  final FormzStatus status;
  final String? errorMessage;

  const SignUpState({
    this.userName = const UserName.pure(),
    this.email = const Email.pure(),
    this.phone = const Phone.pure(),
    this.password = const Password.pure(),
    this.confirmedPassword = const ConfirmPassword.pure(),
    this.fingerCode = const FingerCode.pure(),
    this.status = FormzStatus.pure,
    this.errorMessage,
  });

  @override
  List<Object> get props =>
      [userName, email, phone, password, confirmedPassword, fingerCode, status];

  SignUpState copyWith({
    UserName? userName,
    Email? email,
    Phone? phone,
    Password? password,
    ConfirmPassword? confirmedPassword,
    FingerCode? fingerCode,
    FormzStatus? status,
    String? errorMessage,
  }) {
    return SignUpState(
      userName: userName ?? this.userName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      password: password ?? this.password,
      confirmedPassword: confirmedPassword ?? this.confirmedPassword,
      fingerCode: fingerCode ?? this.fingerCode,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
