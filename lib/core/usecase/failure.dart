import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

abstract class Failure extends Equatable {
  final int errorCode;
  final String message;

  const Failure({
    required this.errorCode,
    required this.message,
  });

  @override
  List<Object?> get props => [errorCode, message,];

  void handleFailure() {
    debugPrint('handleFailure errorCode: $errorCode, message: $message');
  }
}

class NetworkFailure extends Failure {
  const NetworkFailure({
    required super.errorCode,
    required super.message,
  });
}

class ServerFailure extends Failure {
  const ServerFailure({
    required super.errorCode,
    required super.message,
  });
}

class StorageFailure extends Failure {
  const StorageFailure({
    required super.errorCode,
    required super.message,
  });
}

class ServerResponseFailure extends Failure {
  const ServerResponseFailure({
    super.errorCode = -1,
    super.message = 'Server Response Data Error',
  });
}

class StateExceptionFailure extends Failure {
  const StateExceptionFailure({
    super.errorCode = -1,
    super.message = 'State Exception Failure',
  });
}

class UnknownFailure extends Failure {
  const UnknownFailure({
    super.errorCode = -1,
    super.message = 'unknown error',
  });
}