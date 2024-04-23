part of 'counter_bloc.dart';

sealed class CounterEvent{
  const CounterEvent();

}
class ConterIncreased extends CounterEvent{
    final int value;
    const ConterIncreased(this.value);
  }
  class CounterReset extends CounterEvent{}
