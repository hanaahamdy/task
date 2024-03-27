import 'package:flutter/material.dart';
import 'package:task/features/Home/presentation/widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: HomeBody(),);
  }
}
