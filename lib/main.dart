import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/utils/theme.dart';
import 'package:task/features/Home/presentation/cubit/home_bloc.dart';
import 'package:task/features/Home/presentation/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home:BlocProvider<HomeBloc>(
          create: (context)=>HomeBloc(),
        child: const HomeView()),
      theme: appTheme());
  }
}

