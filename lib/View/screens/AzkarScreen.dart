import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sebha/ViewModel/Cubit/AzkarCubit/AzkarCubit.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AzkarCubit>(context,listen: true);
    return Scaffold(
      body: ListView.separated(itemBuilder: (BuildContext context, int index) {
       return Text('${cubit.azkarModel!.arabia!.dataObject[index].title}');
      }, itemCount: 6, separatorBuilder: (BuildContext context, int index) =>SizedBox(
        height: 10,
      ),
        shrinkWrap: true,



      ),
    );
  }
}
