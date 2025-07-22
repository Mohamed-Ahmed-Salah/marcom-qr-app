import 'package:equatable/equatable.dart';

class ServerException extends Equatable implements Exception {
  const ServerException({required this.message, required this.statusCode});

  final String message;
  final int statusCode;

  @override
  List<Object> get props => [message, statusCode];
}

class UserNotFoundException extends Equatable implements Exception {
  const UserNotFoundException(
      {required this.message, required this.statusCode});

  final String message;
  final int statusCode;

  @override
  List<Object> get props => [message, statusCode];
}

/// Exception thrown when the  user does not have an internet connection
class NoInternetException extends Equatable implements Exception {
  final String message;
  final int statusCode;

  const NoInternetException({required this.message, required this.statusCode});

  // TODO: implement props
  @override
  List<Object?> get props => [message, statusCode];
}

/// Exception thrown when the  user does not have an internet connection
class TimeOutException extends Equatable implements Exception {
  final String message;

  final int statusCode;

  const TimeOutException({required this.message, required this.statusCode});

  // TODO: implement props
  @override
  List<Object?> get props => [message, statusCode];
}
