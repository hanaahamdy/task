part of 'bloc_imports.dart';

class HomeBloc extends Cubit<HomeStates> {
  HomeBloc() : super(HomeInitState());

  static HomeBloc get(BuildContext context) {
    return BlocProvider.of(context);
  }

  List<TextFieldModel> contactNumbersList = [];
  String contactNumber = '';
  PhoneContact? phoneContact;

  void selectPlayerContactNumber() async {
    bool permission = await FlutterContactPicker.requestPermission();
    if (permission) {
      if (await FlutterContactPicker.hasPermission()) {
        phoneContact = await FlutterContactPicker.pickPhoneContact();
        if (phoneContact!.phoneNumber!.number!.isNotEmpty) {
          contactNumber = phoneContact!.phoneNumber!.number.toString();
          contactCardCreation(contactNumber: contactNumber);
          emit(SelectContact());
        }
      }
    }
  }

  void contactCardCreation({required String contactNumber}) {
    bool check = checkNumberExistence(text: contactNumber);
    if (check) {
      Fluttertoast.showToast(
          msg: AppStrings.contactNumberExist,
         );
    } else {
      addContactNumberToList(contactNumber:contactNumber);
    }
  }

  bool checkNumberExistence({required String text}) {
    if (contactNumbersList.isNotEmpty) {
      for (TextFieldModel element in contactNumbersList) {
        if (element.controller.text == text) {
          return true;
        }
      }
      return false;
    }
    return false;
  }

  void addContactNumberToList({required String contactNumber}){
    contactNumbersList.add(
      TextFieldModel(
        controller: TextEditingController(
          text: contactNumber,
        ),
      ),
    );
    emit(AddToListState());
  }

  void removeContactNumber(int index) {
    contactNumbersList.removeAt(index);
    emit(RemoveFromListState());
  }
}
