import 'package:bloc/bloc.dart';
import 'package:sebha/Model/AzkarModel.dart';
import 'package:sebha/ViewModel/Cubit/AzkarCubit/AzkarStates.dart';
import 'package:sebha/ViewModel/database/network/dio_helper.dart';

import '../../database/network/end_point.dart';

class AzkarCubit extends Cubit<AzkarCubitStates> {
  AzkarCubit() : super(AzkarInitialState());
  AzkarModel? azkarModel;

  getData() {
    DioHelper.getData(
      url: husnAr,
    ).then((value) {
      print(value.data);
      azkarModel= AzkarModel.fromJson(value.data);

      emit(GetDataSuccessState());
    }).catchError((error) {
      emit(GetDataErrorState());
    });
  }
}
