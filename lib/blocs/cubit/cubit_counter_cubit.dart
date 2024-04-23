import 'package:flutter_bloc/flutter_bloc.dart';


part 'cubit_counter_state.dart';

class CubitCounter extends Cubit<CubitCounterState> {
  CubitCounter() : super(CubitCounterState());

  void increseBy (int value){
    emit(state.copyWith(
      counter: state.counter +value,
      changesCunter: state.changesCunter +1,
    ));
  }
  void reset () {
    emit(state.copyWith(counter: 0));
  }
}
