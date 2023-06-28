import 'package:equatable/equatable.dart';

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}

class RequestParams extends Equatable {
  const RequestParams({
    required this.accessToken,
  });

  final String accessToken;

  @override
  List<Object?> get props => [accessToken,];
}