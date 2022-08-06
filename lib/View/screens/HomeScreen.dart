import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sebha/View/screens/AzkarScreen.dart';
import 'package:sebha/ViewModel/Cubit/CubitCount.dart';

import '../../ViewModel/Cubit/CubitCountStates.dart';
import '../component/CustomText.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitCount, CubitCountStates>(
         listener: (context,state)
         {

         },
         builder: (context,state)
         {
           var cubit = BlocProvider.of<CubitCount>(context);
           return Scaffold(
             body: Column(
               children:
               [
                 CustomText(text: '${cubit.counter}'),
                 SizedBox(
                   height: 30,
                 ),


                 TextButton(
                   child: CustomText(text: '${cubit.counter}'),
                   onPressed: ()
                   {
                     cubit.incCount();
                   },
                 )
               ],
             ),


           );
         },

    );
  }
}
