part of 'imports.dart';

class BuildContactCards extends StatelessWidget {
  const BuildContactCards({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeStates>(
      builder: (context, state) {
        final HomeBloc homeBloc = HomeBloc.get(context);
        return Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.pH28),
            children: List.generate(
              homeBloc.contactNumbersList.length,
              (index) {
                return BuildContactCardsItem(index:index,);
              },
            ),
          ),
        );
      },
    );
  }
}
