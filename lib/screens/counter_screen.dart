import 'package:flutter/material.dart';
/* import 'dart:convert';
import 'package:http/http.dart' as http; */
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:counter_app/providers/providers.dart';

/* Future<String> requestDate() async {
  final url = Uri.parse(
    'https://jsonplaceholder.typicode.com/albums/1',
  );
  final response = await http.get(url);
  final jsonResponse = jsonDecode(response.body);
  final dateToday = jsonResponse["title"];
  print(dateToday);
  return dateToday.toString();
} */

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  /* late Future<String> myDate;
  @override
   void initState() {
    super.initState();
    myDate = requestDate();
  } */

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    final notifier = ref.watch(counterProvider.notifier);
    return Scaffold(
      backgroundColor: Colors.amber[900],
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Mi nueva app'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'decrease',
            onPressed: notifier.decreaseCounter,
            child: const Icon(Icons.exposure_minus_1),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'increase',
            onPressed: notifier.incrementCounter,
            child: const Icon(Icons.plus_one),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
/*             FutureBuilder(
                future: myDate,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data!);
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }

                  // By default, show a loading spinner.
                  return const CircularProgressIndicator();
                }), */
            Text(
              '$counter',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
