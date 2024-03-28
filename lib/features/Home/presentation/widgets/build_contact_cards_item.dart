part of 'imports.dart';

class BuildContactCardsItem extends StatelessWidget {
  final int index;
  const BuildContactCardsItem({super.key, required this.index,});

  @override
  Widget build(BuildContext context) {
    final HomeBloc homeBloc = HomeBloc.get(context);
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          height: AppSize.sH50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: ColorManager.white,
            border: Border.all(
                color: ColorManager.red,
                width: ConstantManager.containerBorderWidth),
          ),
          margin: EdgeInsets.all(AppMargin.mH12),
        ),
        Positioned(
          top: AppSize.sH16,
          right: AppSize.sH16,
          left: AppSize.sH6,
          child: CustomizedTextField(
            autoValidateMode: AutovalidateMode.always,
            contentPadding: EdgeInsets.symmetric(vertical: AppPadding.pH10),
            borderWidth: ConstantManager.containerBorderWidth,
            enableBorderColor: ColorManager.red,
            focusBorderColor: ColorManager.red,
            height: MediaQuery.of(context).size.height * .4,
            suffixWidget: Text(
              "  :${index + 1} ${AppStrings.playerNumber}",
              style:
                  TextStyle(color: ColorManager.black, fontSize: FontSize.s14),
            ),
            suffixIcon: Image.asset(
              AssetsManager.gamingLogo,
              scale: 2.5,
            ),
            prefixIcon: removeIcon(homeBloc),
            fillColor: ColorManager.opacityWhite,
            label: '',
            onChange: (String value) {},
            controller: homeBloc.contactNumbersList[index].controller,
            validate: (String? value) {},
            fieldTypes: FieldTypes.normal,
            action: TextInputAction.next,
            type: TextInputType.number,
          ),
        ),
      ],
    );
  }

  IconButton removeIcon(HomeBloc homeBloc) {
    return IconButton(
      icon: CircleAvatar(
        backgroundColor: ColorManager.red,
        radius: 12.r,
        child: const Icon(
          Icons.close,
          size: ConstantManager.closeIconSize,
          color: ColorManager.white,
        ),
      ),
      onPressed: () {
        homeBloc.removeContactNumber(index);
      },
    );
  }
}
