import 'package:equatable/equatable.dart';

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}

class BaseRequestParams extends Equatable {
  final String accessToken;

  const BaseRequestParams(this.accessToken);

  @override
  List<Object> get props => [accessToken];
}