import 'package:equatable/equatable.dart';

abstract class Success extends Equatable {
  const Success({
    required this.message,
  });

  final String message;

  @override
  List<Object?> get props => [message,];
}

class BaseSuccess extends Success {
  const BaseSuccess({
    required super.message
  });
}