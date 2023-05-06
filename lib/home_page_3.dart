// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:riverpod_research/home_page_2.dart';
// import 'package:riverpod_research/main.dart';

// class MyHomePage3 extends ConsumerWidget {
//   const MyHomePage3({super.key, required this.title});

//   final String title;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     AsyncValue<int> count = ref.watch(counter8);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: count.when(
//         data: (data) => Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const Text(
//                 'You have pushed the button this many times:',
//               ),
//               Text(
//                 '${count.value}',
//                 style: Theme.of(context).textTheme.headline4,
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.of(context).push(MaterialPageRoute(
//                       builder: (context) =>
//                           const MyHomePage2(title: 'Flutter Demo Home Page')));
//                 },
//                 child: const Text('Go to page 2'),
//               ),
//             ],
//           ),
//         ),
//         error: (error, stackTrace) => Center(
//           child: Text(error.toString()),
//         ),
//         loading: () => const Center(
//           child: CircularProgressIndicator(),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           //increment the count
//           // ref.read(counter8.notifier).increment();
//         },
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
