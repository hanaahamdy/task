part of 'imports.dart';

class BuildHomeTitle extends StatelessWidget {
  const BuildHomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.homeTitle,
      style: TextStyleManager.title,
    );
  }
}
