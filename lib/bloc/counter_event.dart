part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class AddEvent extends CounterEvent{}
class DecreaseEvent extends CounterEvent{}