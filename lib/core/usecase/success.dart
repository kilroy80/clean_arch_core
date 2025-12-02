import 'package:equatable/equatable.dart';

abstract class Success with EquatableMixin {
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