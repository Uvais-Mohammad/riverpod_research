import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_research/counter%20copy/counter.dart';
import 'package:riverpod_research/counter%20copy/counter_state.dart';
import 'package:riverpod_research/counter.dart';
import 'package:riverpod_research/counter/counter.dart';
import 'package:riverpod_research/counter/counter_screen.dart';
import 'package:riverpod_research/counter/counter_state.dart';
import 'package:riverpod_research/counter_family.dart';
import 'package:riverpod_research/provider_observer.dart';

void main() {
  runApp( ProviderScope(observers: [Logger()],child: const MyApp()));
}

final counter1 = Provider((ref) => 0);
final counter2 = StateProvider((ref) => 0);
final counter3 = StateNotifierProvider<Counter,int>((ref) => Counter());
final counter4 = StateNotifierProvider.autoDispose<Counter,int>((ref) => Counter());
final counter5= StateNotifierProvider.family<CounterFamily,int,int>((ref, i) => CounterFamily(i));
final counter6= StateNotifierProvider.autoDispose.family<CounterFamily,int,int>((ref, i) => CounterFamily(i));
final counter7= StateNotifierProvider.family<CounterFamily,int,int>((ref, i) => CounterFamily(i), name: 'counter7');
final counter8= FutureProvider((ref) async => await Future.delayed(const Duration(seconds: 3), () => 1));
final counter9 = StateNotifierProvider<CounterMain, CounterState>((ref) => CounterMain());
final counter10 = StateNotifierProvider<CounterMain2, CounterState2>((ref) => CounterMain2());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CounterScreen(title: 'Riverpod like Bloc'),
    );
  }
}


