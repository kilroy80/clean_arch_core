part of 'main_bloc.dart';

/// sealed recommend
@freezed
sealed class MainEvent with _$MainEvent {
  const factory MainEvent.load() = _Load;
  const factory MainEvent.increase() = _Increase;
}
