part of 'imports.dart';

class BuildButton extends StatelessWidget {
  const BuildButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(labelStyle: TextStyleManager.buttonStyle,
      onPressed: () {},
      radius: 12.r,
      buttonHeight: MediaQuery.of(context).size.height *.07,
      borderSideColor: ColorManager.red,
      backgroundColor: ColorManager.white,
      buttonHMargin:AppSize.sH30,
      buttonLabel: AppStrings.homeButtonTitle,

    );
  }
}
