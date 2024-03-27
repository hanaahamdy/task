part of 'imports.dart';

class BuildSelectNumber extends StatelessWidget {
  const BuildSelectNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: ListTile(
        trailing: Icon(
          Icons.navigate_next,
          color: ColorManager.black,
        ),
        leading: Icon(
          Icons.camera_rear_rounded,
          color: ColorManager.black,
        ),
        title: Text(
          AppStrings.selectNumber,
          style: TextStyle(
              decoration: TextDecoration.underline,
              decorationColor: ColorManager.black,
              color: ColorManager.black),
        ),
      ),
    );
  }
}
