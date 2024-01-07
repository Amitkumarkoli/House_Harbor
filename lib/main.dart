import 'package:flutter/material.dart';
import 'package:house_harbor/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
    debugShowCheckedModeBanner : false,
     home: HomePage(title: '',),
    
    );
  }
}

// this is main structure means root of our project