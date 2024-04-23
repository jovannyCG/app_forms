part of 'cubit_counter_cubit.dart';

class CubitCounterState {
  final int counter;
  final int changesCunter;
  CubitCounterState({
    this.counter =0,
    this.changesCunter =0
  });
  copyWith({
     int? counter,
   int? changesCunter,
  }) => CubitCounterState(
    counter: counter ?? this.counter,
    changesCunter: changesCunter ?? this.changesCunter,
  );

}


