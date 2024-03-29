import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_research/main.dart';

class Counter5 extends ConsumerWidget {
  const Counter5({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String title = 'Future Provider';

    final count = ref.watch(counter5);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            !count.isLoading
                ? Text(
                    '${count.value}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  )
                : const CircularProgressIndicator(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ref.read(provider).increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
