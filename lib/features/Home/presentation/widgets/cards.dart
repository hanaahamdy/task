import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/Home/presentation/cubit/home_bloc.dart';
import 'package:task/features/Home/presentation/cubit/home_states.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeStates>(
      builder: (context, state) {
        var cubit = HomeBloc.get(context);
        return Expanded(
          child: ListView.builder(
            itemCount: cubit.numberCards.length,
            itemBuilder: (context, index) => cubit.numberCards[index],
          ),
        );
      },
    );
  }
}
