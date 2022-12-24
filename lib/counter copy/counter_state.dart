abstract class CounterState2 {}

class CounterInitial extends CounterState2 {
  
}

class CounterLoading extends CounterState2 {}

class CounterLoaded extends CounterState2 {
  final int counter;

  CounterLoaded(this.counter);
}