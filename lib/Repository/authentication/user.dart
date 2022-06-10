import 'package:equatable/equatable.dart';

/// {@template user}
/// User model
///
/// [User.empty] represents an unauthenticated user.
/// {@endtemplate}
class User extends Equatable {
  /// {@macro user}
  const User({
    required this.userName,
    this.email,
    this.name,
    this.phone,
  });

  /// The current user's email address.
  final String? email;

  /// The current user's id.
  final String userName;

  /// The current user's name (display name).
  final String? name;

  /// Url for the current user's photo.
  final String? phone;

  /// Empty user which represents an unauthenticated user.
  static const empty = User(userName: '');

  /// Convenience getter to determine whether the current user is empty.
  bool get isEmpty => this == User.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != User.empty;

  @override
  List<Object?> get props => [email, userName, name, phone];
}
