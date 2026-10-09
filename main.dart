import 'package:flutter/material.dart';
import 'package:vucut_kitle_endeksi/ana_uygulama.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: AnaUygulama(),
    );
  }
}
