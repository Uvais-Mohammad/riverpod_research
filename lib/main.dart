import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_research/counter/counter.dart';
import 'package:riverpod_research/counter/counter_state.dart';
import 'package:riverpod_research/home_page_1.dart';

import 'counter.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

final counter1 = Provider((ref) => 5);
final counter2 = StateProvider((ref) => 0);
final counter3 = StateNotifierProvider<Counter, int>((ref) => Counter());
final counter4 =
    StateNotifierProvider<CounterMain, CounterState>((ref) => CounterMain());
final counter5 = FutureProvider(
    (ref) async => await Future.delayed(const Duration(seconds: 3), () => 1));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Change this to Counter1, Counter2, Counter3, Counter4, Counter5
      // to see the different examples
      home: const Counter5(),
    );
  }
}

// final counter4 = StateNotifierProvider.autoDispose<Counter,int>((ref) => Counter());
// final counter5 = StateNotifierProvider.family<CounterFamily,int,int>((ref, i) => CounterFamily(i));
// final counter6 = StateNotifierProvider.autoDispose.family<CounterFamily,int,int>((ref, i) => CounterFamily(i));
// final counter7 = StateNotifierProvider.family<CounterFamily,int,int>((ref, i) => CounterFamily(i), name: 'counter7');
// final counter10 = StateNotifierProvider<CounterMain2, CounterState2>((ref) => CounterMain2());
