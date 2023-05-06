import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_research/counter/counter_state.dart';



class CounterMain extends StateNotifier<CounterState> {
  CounterMain() : super(CounterState());

  void increment() async {
    state = state.copyWith(isLoading: true);
    await Future.delayed(const Duration(seconds: 3));
    state = state.copyWith(isLoading: false, counter: state.counter + 1);
  }

  void decrement() async {
    state = state.copyWith(isLoading: true);
    await Future.delayed(const Duration(seconds: 3));
    state = state.copyWith(isLoading: false, counter: state.counter - 1);
  }
}
