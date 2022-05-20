part of 'counter_bloc.dart';

 class CounterState {
   final int count;

  CounterState({required this.count});
 }

class InitinalState extends CounterState{
  InitinalState() : super(count: 0);
  
}