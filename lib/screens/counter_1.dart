import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_research/main.dart';

class Counter1 extends ConsumerWidget {
  const Counter1({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = counter1;
    String title = 'Simple Provider';
    ref.listen(provider, (v1, v2) {});
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
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          log(ref.read(provider).toString());
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
