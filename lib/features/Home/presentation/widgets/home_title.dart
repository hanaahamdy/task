part of 'imports.dart';
class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Text(AppStrings.homeTitle,style:TextStyleManager.title,);
  }
}
