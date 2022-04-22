import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterInitial> {
  CounterBloc() : super(const CounterInitial(counter: 0)) {
    on<CounterEvent>((event, emit) async {
      if (event is AddEvent) {
        emit(CounterInitial(counter: state.counter + 1));
      } else {
        emit(CounterInitial(counter: state.counter - 1));
      }
    });
  }
}
