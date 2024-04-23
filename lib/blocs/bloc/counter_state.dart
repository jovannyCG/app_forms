part of 'counter_bloc.dart';

 class CounterState extends Equatable {
   final int counter;
  final int changesCunter;

  const CounterState({
    this.counter = 10,
    this.changesCunter = 0
  });
  
  
  @override
  List<Object> get props => [counter, changesCunter];

   copyWith({
     int? counter,
   int? changesCunter,
  }) => CounterState(
    counter: counter ?? this.counter,
    changesCunter: changesCunter ?? this.changesCunter,
  );
}


