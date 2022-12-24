import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterFamily extends StateNotifier<int> {
  CounterFamily(this.initialValue) : super(initialValue);

  final int initialValue;
  void increment() => state++;
}
