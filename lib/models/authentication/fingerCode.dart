import 'package:formz/formz.dart';

/// Validation errors for the [Password] [FormzInput].
enum FingerCodeValidationError {
  /// Generic invalid error.
  invalid
}

/// {@template password}
/// Form input for an password input.
/// {@endtemplate}
class FingerCode extends FormzInput<String, FingerCodeValidationError> {
  /// {@macro password}
  const FingerCode.pure() : super.pure('');

  /// {@macro password}
  const FingerCode.dirty([String value = '']) : super.dirty(value);

  @override
  FingerCodeValidationError? validator(String? value) {
    return null;
  }
}
