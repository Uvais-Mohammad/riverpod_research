class CounterState {
  
  int counter;
  bool isLoading;

  CounterState({this.counter = 0, this.isLoading = false});

  CounterState copyWith({
    int? counter,
    bool? isLoading,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

