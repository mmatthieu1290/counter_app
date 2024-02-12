import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_providers.g.dart';

/* @riverpod
int counter(CounterRef ref) {
  return 1;
} */

@Riverpod(keepAlive: true)
class Counter extends _$Counter {
  @override
  int build() {
    return 1;
  }

  void incrementCounter() {
    state++;
  }

  void decreaseCounter() {
    state--;
  }
}
