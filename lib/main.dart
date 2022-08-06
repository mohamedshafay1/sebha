import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sebha/View/screens/HomeScreen.dart';
import 'package:sebha/ViewModel/Cubit/CubitCount.dart';
import 'package:sebha/ViewModel/database/local/cache_helper.dart';
import 'package:sebha/ViewModel/database/network/dio_helper.dart';

import 'View/screens/HomeTab.dart';
import 'ViewModel/Cubit/AzkarCubit/AzkarCubit.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await DioHelper.init();
 await CacheHelper.init();
  runApp( MultiBlocProvider(providers:
  [
    BlocProvider(create: (context)=>CubitCount()),
    BlocProvider(create: (context)=>AzkarCubit()..getData()),

  ],
  child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  HomeTab(),
    );
  }
}


