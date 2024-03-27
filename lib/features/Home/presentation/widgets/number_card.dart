part of 'imports.dart';

class NumberCard extends StatelessWidget {
  final Function()? removeAction;

  const NumberCard({super.key, this.removeAction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColorManager.white,
              border: Border.all(color: ColorManager.red),
            ),
            margin: const EdgeInsets.all(12),
          ),
          Positioned(
            top: 18,
            right: 22,
            left: -1,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomTextField(
                textFieldHeight: MediaQuery.of(context).size.height * .07,
                prefix: IconButton(
                  icon: const CircleAvatar(
                    backgroundColor: ColorManager.red,
                    radius: 12,
                    child: Icon(
                      Icons.close,
                      color: ColorManager.white,
                    ),
                  ),
                  onPressed: () {
                    var cubit = HomeBloc.get(context);
                    cubit.remove(0);
                  },
                ),
                suffix: const Icon(Icons.credit_card_outlined),
                label: '',
                fillColor: ColorManager.white,
                borderColor: ColorManager.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
