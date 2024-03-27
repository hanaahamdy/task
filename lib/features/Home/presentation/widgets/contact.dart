import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttercontactpicker/fluttercontactpicker.dart';

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: MainWidget(),
      );
}

class MainWidget extends StatefulWidget {
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  PhoneContact? _phoneContact;


  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: kIsWeb && !FlutterContactPicker.available
              ? [_buildError(context)]
              : _buildChildren(context),
        ),
      );

  Widget _buildError(BuildContext context) {
    return RichText(
      text: TextSpan(
          text:
              'Your browser does not support contact pickers for more information see: ',
          children: [
            // TextSpan(
            //     text: 'https://web.dev/contact-picker/',
            //     style: TextStyle(
            //       color: Colors.blue,
            //       decoration: TextDecoration.underline,
            //     ),
            //     recognizer: TapGestureRecognizer()
            //       ..onTap = () => launchUrl(Uri.parse('https://web.dev/contact-picker/'))),
            // TextSpan(text: ' and '),
            // TextSpan(
            //     text:
            //     'https://developer.mozilla.org/en-US/docs/Web/API/Contact_Picker_API#Browser_compatibility/',
            //     style: TextStyle(
            //       color: Colors.blue,
            //       decoration: TextDecoration.underline,
            //     ),
            //     recognizer: TapGestureRecognizer()
            //       ..onTap = () => launchUrl(Uri.parse(
            //           'https://developer.mozilla.org/en-US/docs/Web/API/Contact_Picker_API#Browser_compatibility')))
          ]),
    );
  }

  List<Widget> _buildChildren(BuildContext context) {
    return <Widget>[
      if (_phoneContact != null)
        Column(
          children: <Widget>[
            Text(" ${_phoneContact!.phoneNumber!.number}")
          ],
        ),
      ElevatedButton(
        child: const Text("pick phone contact"),
        onPressed: () async {
          final PhoneContact contact =
              await FlutterContactPicker.pickPhoneContact();
          print(contact);
          setState(() {
            _phoneContact = contact;
          });
        },
      ),
    ];
  }
}
