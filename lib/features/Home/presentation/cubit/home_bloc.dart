import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/Home/presentation/cubit/home_states.dart';
import 'package:task/features/Home/presentation/widgets/imports.dart';

class HomeBloc extends Cubit<HomeStates> {
  HomeBloc() : super(HomeInitState());

  static HomeBloc get(BuildContext context) {
    return BlocProvider.of(context);
  }

  List<Widget> numberCards = [];

  void addCardNumber() {
    numberCards.add(const NumberCard());
    emit(AddToListState());
  }

  void remove(int index) {
    numberCards.removeAt(index);
    emit(RemoveFromListState());
  }
}
