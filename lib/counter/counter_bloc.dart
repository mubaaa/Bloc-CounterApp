import 'dart:developer';

import 'package:bloc/bloc.dart';


part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitinalState()) {
    on<IncreamentEvent>((event, emit)  {
      final currentStateValue = state.count;
     final incrementedstateValue=currentStateValue+1;
      return emit(CounterState(count: incrementedstateValue));
    });

    on<DecreamentEvent>((event, emit)  {
          final currentStateValue = state.count;
     final decrementedstateValue=currentStateValue-1;
      return emit(CounterState(count: decrementedstateValue));
    });
  }
}
