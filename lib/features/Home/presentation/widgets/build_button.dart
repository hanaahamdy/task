part of 'imports.dart';

class BuildButton extends StatelessWidget {
  const BuildButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            side: const BorderSide(color: ColorManager.red),
            backgroundColor: ColorManager.white,
          ),
          child: const Text(
            AppStrings.homeButtonTitle,
            style: TextStyle(fontSize: 14, color: ColorManager.black),
          )),
    );
  }
}
