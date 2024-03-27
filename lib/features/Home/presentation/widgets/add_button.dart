import 'package:flutter/material.dart';
import 'package:task/core/utils/colors.dart';
import 'package:task/features/Home/presentation/cubit/home_bloc.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          HomeBloc.get(context).addCardNumber();
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          side: const BorderSide(color: ColorManager.red),
          backgroundColor: ColorManager.white,
        ),
        child: const Text("اضافه"),
      ),
    );
  }
}
