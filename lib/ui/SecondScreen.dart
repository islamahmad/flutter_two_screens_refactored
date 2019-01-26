import 'package:flutter/material.dart';
//import 'package:two_screens_refactored/utils/Routes.dart';

class SecondScreen extends StatefulWidget {
  final String secondScreenText;
  SecondScreen({Key key, this.secondScreenText}) : super(key: key);
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController secondScreenController = TextEditingController();
  void flatButtonPressed() {
    Navigator.pop(context,secondScreenController.text);
    debugPrint('flat button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'First Screen',
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text(widget.secondScreenText),
            ),
            ListTile(
              title: TextField(
                controller: secondScreenController,
                decoration: InputDecoration(
                  hintText: 'Enter Text',
                  labelText: 'Send back to first screen',
                ),
              ),
            ),
            ListTile(
              title: FlatButton(
                onPressed: flatButtonPressed,
                color: Colors.deepOrangeAccent,
                child: Text('Send Back'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
