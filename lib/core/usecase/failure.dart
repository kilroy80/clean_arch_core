import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

abstract class Failure extends Equatable {
  final int errorCode;
  final String message;

  const Failure(this.errorCode, this.message);

  @override
  List<Object> get props => [errorCode, message];

  void handleFailure() {
    debugPrint('fail ==== errorCode: $errorCode, message: $message');
  }
}

class NetworkFailure extends Failure {
  const NetworkFailure(int errorCode, String message) : super(errorCode, message);
}

class ServerFailure extends Failure {
  const ServerFailure(int errorCode, String message) : super(errorCode, message);
}

class StorageFailure extends Failure {
  const StorageFailure(int errorCode, String message) : super(errorCode, message);
}

class ServerResponseFailure extends Failure {
  const ServerResponseFailure({
    int errorCode = -2, String message = 'Server Response Data Error'
  }) : super(errorCode, message);
}

class UnknownFailure extends Failure {
  const UnknownFailure({int errorCode = -1, String message = 'unknown error'})
      : super(errorCode, message);
}

class StateExceptionFailure extends Failure {
  const StateExceptionFailure({int errorCode = -1, String message = 'State Exception Failure'})
      : super(errorCode, message);
}