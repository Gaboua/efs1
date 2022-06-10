import 'dart:async';

import 'package:efs1/Repository/authentication/user.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:meta/meta.dart';

class SignUpWithEmailAndPasswordFailure implements Exception {
  /// {@macro sign_up_with_email_and_password_failure}
  const SignUpWithEmailAndPasswordFailure([
    this.message = 'An unknown exception occurred.',
  ]);

  /// The associated error message.
  final String message;
}

class LogInWithEmailAndPasswordFailure implements Exception {
  /// {@macro log_in_with_email_and_password_failure}
  const LogInWithEmailAndPasswordFailure([
    this.message = 'An unknown exception occurred.',
  ]);

  /// The associated error message.
  final String message;
}

/// Thrown during the logout process if a failure occurs.
class LogOutFailure implements Exception {}

class AuthenticationRepository {
  /// {@macro authentication_repository}
  AuthenticationRepository();

  Stream<User> get user {}

  User get currentUser {}

  Future<void> signUp(
      {required String userName,
      String email = '',
      String phone = '',
      required String password,
      String fingerCode = ''}) async {
    try {} catch (e) {
      throw SignUpWithEmailAndPasswordFailure;
    }
  }

  Future<void> logInWithUserNameAndPassword({
    required String userName,
    required String password,
  }) async {
    try {} catch (_) {
      throw const LogInWithEmailAndPasswordFailure();
    }
  }

  Future<void> logInWithFingerCode({
    required String fingerCode,
  }) async {
    try {} catch (_) {
      throw const LogInWithEmailAndPasswordFailure();
    }
  }

  Future<void> logOut() async {
    try {} catch (_) {
      throw LogOutFailure();
    }
  }
}
