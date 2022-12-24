import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'main.dart';

class MyHomePage2 extends ConsumerWidget {
  const MyHomePage2({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = counter6(100);
    ref.listen(provider, (v1, v2) {
      if (v2 % 5 == 0) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar
          ..showSnackBar(
            SnackBar(
              content: Text('You have reached $v2'),
            ),
          );
      }
    });
    final count = ref.watch(provider);
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
            Text(
              '$count',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(provider.notifier).increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
