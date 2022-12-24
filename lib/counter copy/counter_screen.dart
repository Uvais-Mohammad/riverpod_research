import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_research/counter%20copy/counter_state.dart';
import 'package:riverpod_research/home_page_2.dart';
import 'package:riverpod_research/main.dart';

class CounterScreen2 extends ConsumerWidget {
  const CounterScreen2({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Consumer(
        builder: ((context, ref, child) {
          final counterState = ref.watch(counter10);
          if (counterState.runtimeType == CounterInitial) {
            return const Center(
              child: Text("0"),
            );
          }
          if (counterState.runtimeType == CounterLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${(counterState as CounterLoaded).counter}',
                  style: Theme.of(context).textTheme.headline4,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MyHomePage2(
                            title: 'Flutter Demo Home Page')));
                  },
                  child: const Text('Go to page 2'),
                ),
              ],
            ),
          );
        }),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counter10.notifier).increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
    
  }
}
