part of '../bloc/main_bloc.dart';

@freezed
abstract class MainBlocData with _$MainBlocData {
  const factory MainBlocData({
    @Default(0) int inc,
  }) = _MainBlocData;
}

@freezed
sealed class MainState with _$MainState {
  const factory MainState.init({
    @Default(MainBlocData()) MainBlocData data,
  }) = MainStateInit;
  const factory MainState.load({
    @Default(MainBlocData()) MainBlocData data,
  }) = MainStateLoad;
}
