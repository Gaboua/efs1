import 'package:bloc/bloc.dart';
import 'package:efs1/Repository/authentication/authenticationRepository.dart';
import 'package:efs1/models/authentication/confirmPassword.dart';
import 'package:efs1/models/authentication/email.dart';
import 'package:efs1/models/authentication/fingerCode.dart';
import 'package:efs1/models/authentication/password.dart';
import 'package:efs1/models/authentication/phone.dart';
import 'package:efs1/models/authentication/userName.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

part 'signup_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._authenticationRepository) : super(const SignUpState());

  final AuthenticationRepository _authenticationRepository;

  void userNameChanged(String value) {
    final userName = UserName.dirty(value);
    emit(
      state.copyWith(
        userName: userName,
        status: Formz.validate([
          userName,
          state.phone,
          state.email,
          state.password,
          state.confirmedPassword,
        ]),
      ),
    );
  }

  void emailChanged(String value) {
    final email = Email.dirty(value);
    emit(
      state.copyWith(
        email: email,
        status: Formz.validate([
          state.userName,
          state.phone,
          email,
          state.password,
          state.confirmedPassword,
        ]),
      ),
    );
  }

  void phoneChanged(String value) {
    final phone = Phone.dirty(value);
    emit(
      state.copyWith(
        phone: phone,
        status: Formz.validate([
          state.userName,
          state.email,
          phone,
          state.password,
          state.confirmedPassword,
        ]),
      ),
    );
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    final confirmedPassword = ConfirmPassword.dirty(
      password: password.value,
      value: state.confirmedPassword.value,
    );
    emit(
      state.copyWith(
        password: password,
        confirmedPassword: confirmedPassword,
        status: Formz.validate([
          state.userName,
          state.email,
          state.phone,
          password,
          confirmedPassword,
        ]),
      ),
    );
  }

  void confirmedPasswordChanged(String value) {
    final confirmedPassword = ConfirmPassword.dirty(
      password: state.password.value,
      value: value,
    );
    emit(
      state.copyWith(
        confirmedPassword: confirmedPassword,
        status: Formz.validate([
          state.userName,
          state.email,
          state.phone,
          state.password,
          confirmedPassword,
        ]),
      ),
    );
  }

  void fingerCodeChanged(String value) {
    final fingerCode = FingerCode.dirty(value);
    emit(
      state.copyWith(
        fingerCode: fingerCode,
        status: Formz.validate([
          state.userName,
          state.email,
          state.phone,
          fingerCode,
          state.password,
          state.confirmedPassword,
        ]),
      ),
    );
  }

  Future<void> signUpFormSubmitted() async {
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      await _authenticationRepository.signUp(
          userName: state.userName.value,
          email: state.email.value,
          phone: state.phone.value,
          password: state.password.value,
          fingerCode: state.fingerCode.value);
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } on SignUpWithEmailAndPasswordFailure catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.message,
          status: FormzStatus.submissionFailure,
        ),
      );
    } catch (_) {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }
}
