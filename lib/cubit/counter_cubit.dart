import 'package:flutter_bloc/flutter_bloc.dart';  


class CounterCubit extends Cubit<int>{

  CounterCubit():super(0);

  void increment(){
    print("before:$state");
    emit(state+1);
    print("after:$state");
  }

  void decrement(){
    print("before:$state");
    emit(state-1);
    print("after:$state");
  }
   
}