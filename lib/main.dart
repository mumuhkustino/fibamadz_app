import 'package:flutter/material.dart';
import 'package:fibamadz_app/splash.dart';

//method ini adalah method main yang dijalankan saat app pertamakali dibuka
//method ini akan mengembalikan class MyApp
void main() {
  runApp(MyApp());
}


// class MyApp adalah stateless widget, yaitu widget yang tidak memerlukan
// interaksi apapun 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
    );
  }
}