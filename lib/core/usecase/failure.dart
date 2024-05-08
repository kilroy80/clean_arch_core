import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

abstract class Failure extends Equatable {
  final int code;
  final String message;

  const Failure({
    required this.code,
    required this.message,
  });

  @override
  List<Object?> get props => [code, message,];

  void handleFailure() {
    debugPrint('handleFailure code: $code, message: $message');
  }
}

class BaseFailure extends Failure {
  const BaseFailure({
    super.code = -1,
    super.message = 'BaseFailure',
  });
}

class NetworkFailure extends Failure {
  const NetworkFailure({
    required super.code,
    required super.message,
  });
}

class ServerFailure extends Failure {
  const ServerFailure({
    required super.code,
    required super.message,
  });
}

class StorageFailure extends Failure {
  const StorageFailure({
    required super.code,
    required super.message,
  });
}

class ServerResponseFailure extends Failure {
  const ServerResponseFailure({
    super.code = -1,
    super.message = 'Server Response Data Error',
  });
}

class StateExceptionFailure extends Failure {
  const StateExceptionFailure({
    super.code = -1,
    super.message = 'State Exception Failure',
  });
}

class UnknownFailure extends Failure {
  const UnknownFailure({
    super.code = -1,
    super.message = 'unknown error',
  });
}