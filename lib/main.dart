import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/utils/app_strings.dart';
import 'package:task/core/utils/theme.dart';
import 'package:task/features/Home/presentation/cubit/home_bloc/bloc_imports.dart';
import 'core/utils/values_manager.dart';
import 'features/Home/presentation/imports.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      // status bar color
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      title: AppStrings.appTitle,
      home: ScreenUtilInit(
        designSize: Size(ScreenSizes.width, ScreenSizes.height),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return BlocProvider<HomeBloc>(
            create: (context) => HomeBloc(),
            child: const HomeView(),
          );
        },
      ),
    );
  }
}
