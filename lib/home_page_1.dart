import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_research/home_page_2.dart';
import 'package:riverpod_research/main.dart';

class MyHomePage1 extends ConsumerWidget {
  const MyHomePage1({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = counter7(0);

    ref.listen(provider, (v1, v2) {
      if (v2 % 5 == 0) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar
          ..showSnackBar(
            SnackBar(
              content: Text('You have reached $v2 ${provider.name}'),
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
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        const MyHomePage2(title: 'Flutter Demo Home Page')));
              },
              child: const Text('Go to page 2'),
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
