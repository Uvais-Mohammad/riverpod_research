import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_research/main.dart';

class Counter4 extends ConsumerWidget {
  const Counter4({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterState = ref.watch(counter4);
    String title = 'State Notifier Provider like bloc';
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
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.of(context).push(MaterialPageRoute(
                  //         builder: (context) => const MyHomePage2(
                  //             title: 'Flutter Demo Home Page')));
                  //   },
                  //   child: const Text('Go to page 2'),
                  // ),
                ],
              ),
            ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              ref.read(counter4.notifier).decrement();
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              ref.read(counter4.notifier).increment();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
