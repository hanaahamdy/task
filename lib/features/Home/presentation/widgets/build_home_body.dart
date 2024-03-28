part of 'imports.dart';

class BuildHomeBody extends StatelessWidget {
  const BuildHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: buildBoxDecoration(),
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppPadding.pH50),
        child: Column(
          children: [
            const BuildHomeAppBar(),
            SizedBox(height: AppSize.sH18,),
            const BuildHomeTitle(),
            const BuildSelectNumberButton(),
            const BuildContactCards(),
            const BuildButton(),
          ],
        ),
      ),
    );
  }
}

BoxDecoration buildBoxDecoration() {
  return BoxDecoration(
    color: ColorManager.white,
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        ColorManager.greyWhite,
        ColorManager.white,
        ColorManager.white,
        ColorManager.greyWhite,
      ],
    ),
  );
}
