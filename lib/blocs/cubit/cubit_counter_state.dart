part of 'cubit_counter_cubit.dart';

class CubitCounterState extends Equatable{
  final int counter;
  final int changesCunter;
  const CubitCounterState({
    this.counter = 0,
    this.changesCunter = 0
  });
  copyWith({
     int? counter,
   int? changesCunter,
  }) => CubitCounterState(
    counter: counter ?? this.counter,
    changesCunter: changesCunter ?? this.changesCunter,
  );
  
  @override
  // TODO: implement props
  List<Object> get props =>[ counter, changesCunter];

}


