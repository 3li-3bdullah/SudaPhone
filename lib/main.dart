//@dart=2.9
import 'package:flutter/material.dart';
import './pages/screen.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "mobetech",
      theme: ThemeData(fontFamily: 'Cairo'),
      home: Screen(),
    );
  }
}
