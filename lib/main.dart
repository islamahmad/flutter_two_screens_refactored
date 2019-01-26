import 'package:flutter/material.dart';
import 'package:two_screens_refactored/ui/FirstScreen.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
      title: 'Two Screens Refactored',
      home: FirstScreen(firstScreenText: '',),
    ));
