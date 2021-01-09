import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone_flutter/pages/whatsapp_home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "WhatsApp",
      theme: new ThemeData(
          primaryColor: new Color(0xff3a32b2),
          accentColor: new Color(0xff25D366)),
      home: new WhatsAppHome(),
    );
  }
}
