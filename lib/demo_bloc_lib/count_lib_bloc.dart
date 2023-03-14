import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_02022023/demo_bloc_lib/counter_lib_event.dart';
import 'package:flutter_bloc_02022023/demo_bloc_lib/counter_lib_state.dart';
import 'package:flutter_bloc_02022023/demo_bloc_pattern/counter_event.dart';

class CounterLibBLoc extends Bloc<CounterLibEventBase, CounterLibStateBase> {

  CounterLibBLoc() : super(CounterInitState(valueInit: 0)) {
    on<InCreaseLibEvent>((event, emit){
      int result = event.value + (state.value ?? 0);
      emit(CounterIncreaseSuccess(result));
    });
  }

}