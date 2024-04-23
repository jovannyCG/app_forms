import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bloc_counter_event.dart';
part 'bloc_counter_state.dart';

class BlocCounterBloc extends Bloc<BlocCounterEvent, BlocCounterState> {
  BlocCounterBloc() : super(BlocCounterInitial()) {
    on<BlocCounterEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
