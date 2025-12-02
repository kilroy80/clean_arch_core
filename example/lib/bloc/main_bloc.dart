import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc
    extends Bloc<MainEvent, MainState>
    with ViewModelMixin {
  MainBloc() : super(const MainState.init()) {
    on<MainEvent>((event, emit) async {
      switch (event) {
        case _Load():
          await _load(event, emit);
        case _Increase():
          await _increase(event, emit);
      }
    });
  }

  Future<void> _load(_Load event, Emitter<MainState> emit) async {
    emit(const MainState.load());
  }

  Future<void> _increase(_Increase event, Emitter<MainState> emit) async {
    emit(
      state.copyWith(
        data: state.data.copyWith(
          inc: state.data.inc + 1,
        ),
      ),
    );
  }

  @override
  void authChange() {
  }

  @override
  void create() {
  }

  @override
  void widgetPause() {
  }

  @override
  void widgetResume() {
  }
}
