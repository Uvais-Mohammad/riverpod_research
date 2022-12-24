import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_research/counter%20copy/counter_state.dart';
import 'package:riverpod_research/home_page_2.dart';
import 'package:riverpod_research/main.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterState = ref.watch(counter9);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: counterState.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '${counterState.counter}',
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
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counter9.notifier).increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
