import 'package:flutter/material.dart';
//  import 'package:house_harbor/Screens/home_page.dart';
import 'package:house_harbor/Screens/welcome_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner : false,
     home: WelcomePage(),
    );
  }
}