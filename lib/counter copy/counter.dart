import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_research/counter%20copy/counter_state.dart';



class CounterMain2 extends StateNotifier<CounterState2> {
  CounterMain2() : super(CounterInitial());

  void increment() async {
    state = CounterLoading();
    await Future.delayed(const Duration(seconds: 3));
    state = CounterLoaded(10);
  }
}
