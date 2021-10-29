import 'package:bloc/bloc.dart';
import 'package:flutter_app/modules/counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitialstate());
  // to be easily when using cubit in many places
  static CounterCubit get(context)=> BlocProvider.of(context);
  int counter=1;
  void minus(){
    counter--;
    emit(Counterminusstate(counter));
  }
  void plus(){
    counter++;
    emit(Counterplusstate(counter));
  }
}