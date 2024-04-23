import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<ConterIncreased>(_onConterIncreased);
    on<CounterReset>(_onCounterReset);
  }
  void _onConterIncreased(ConterIncreased event, Emitter<CounterState> emit){
emit(state.copyWith(
      counter: state.counter + event.value,
      changesCunter: state.changesCunter + 1,
    ));
}
void _onCounterReset(CounterReset event, Emitter<CounterState> emit){
   emit(state.copyWith(
      counter: 0,
     // changesCunter: 0,
    ));
}
}


