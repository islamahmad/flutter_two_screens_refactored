import 'package:flutter/material.dart';
import 'package:async/async.dart';
//import 'package:two_screens_refactored/utils/Routes.dart' as util;
import 'package:two_screens_refactored/ui/SecondScreen.dart';

class FirstScreen extends StatefulWidget {
  String firstScreenText = '';

  FirstScreen({Key key, this.firstScreenText}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  TextEditingController firstScreenController = TextEditingController();
   Future raisedButtonPressed() async{
    String messageBack = await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) {
            return SecondScreen(secondScreenText: firstScreenController.text,);
          },
        ),
    );
    if (messageBack != null ){
      widget.firstScreenText = messageBack;
    }
    debugPrint('raised button pressed');

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
              title: Text(widget.firstScreenText),
            ),
            ListTile(
              title: TextField(
                controller: firstScreenController,
                decoration: InputDecoration(
                  hintText: 'Enter Text',
                  labelText: 'To send to second screen',
                ),
              ),
            ),
            ListTile(
              title: RaisedButton(
                onPressed: raisedButtonPressed,
                color: Colors.deepOrangeAccent,
                child: Text('Send to Second Screen'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
