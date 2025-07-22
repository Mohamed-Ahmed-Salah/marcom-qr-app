import 'package:equatable/equatable.dart';

import 'exceptions.dart';

abstract class Failure extends Equatable {
  const Failure({required this.message, required this.statusCode});

  final String message;
  final int statusCode;

  String get errorMessage => message;

  @override
  List<Object> get props => [message, statusCode];
}

class ServerFailure extends Failure {
  const ServerFailure({required super.message, required super.statusCode});

  ServerFailure.fromException(ServerException e)
      : this(message: e.message, statusCode: e.statusCode);
}

class UserNotFoundFailure extends Failure {
  const UserNotFoundFailure(
      {required super.message, required super.statusCode});

  UserNotFoundFailure.fromException(UserNotFoundException e)
      : this(message: e.message, statusCode: e.statusCode);
}


class NoInternetFailure extends Failure {
  const NoInternetFailure(
      {required super.message, required super.statusCode});

  NoInternetFailure.fromException(NoInternetException e)
      : this(message: e.message, statusCode: e.statusCode);
}


class TimeOutFailure extends Failure {
  const TimeOutFailure(
      {required super.message, required super.statusCode});

  TimeOutFailure.fromException(TimeOutException e)
      : this(message: e.message, statusCode: e.statusCode);
}

