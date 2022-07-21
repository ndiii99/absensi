import 'package:absensi/constant/constant.dart';
import 'package:absensi/launcher.dart';
import 'package:absensi/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Absensi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Launcher(),
      routes: <String, WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context) => Launcher(),
        LOGIN_SCREEN: (BuildContext context) => LoginPage(),
      },
    );
  }
}
