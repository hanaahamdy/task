part of 'imports.dart';

class BuildSelectNumberButton extends StatelessWidget {
  const BuildSelectNumberButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListTile(
        trailing: const Icon(
          Icons.navigate_next,
          color: ColorManager.black,
        ),
        leading: Image.asset(AssetsManager.contactImage,scale: 3,),
        title: GestureDetector(
          onTap: () {
            BlocProvider.of<HomeBloc>(context).selectPlayerContactNumber();
          },
          child: const Text(
            AppStrings.selectNumber,
            style: TextStyleManager.textButtonStyle
          ),
        ),
      ),
    );
  }
}
