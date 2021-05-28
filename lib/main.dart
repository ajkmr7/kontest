import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kontest/screens/wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Inter",
        primaryColor: Color(0xff1e2630),
        accentColor: Color(0xff8250ca),
        scaffoldBackgroundColor: Color(0xff1e2630),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      home: Wrapper(),
    );
  }
}
