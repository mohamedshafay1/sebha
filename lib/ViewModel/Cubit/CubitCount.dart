import 'package:bloc/bloc.dart';
import 'package:sebha/ViewModel/Cubit/CubitCountStates.dart';

class CubitCount extends Cubit<CubitCountStates>{
  CubitCount():super(CountInitialState());

  int counter = 0;

  incCount()
  {
    counter++;
    emit(IncCounterState());
  }
}