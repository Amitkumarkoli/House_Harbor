import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:house_harbor/Screens/onboarding_screen.dart';


void main() async{
   WidgetsFlutterBinding.ensureInitialized();
   Platform.isAndroid 
   ? await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDath_Zs4DrdqQeK5f5k2b4RjpRM2u_knw", 
        appId: "1:770623170628:android:770eae52322339790ab411", 
        messagingSenderId: "770623170628", 
        projectId: "house-harbor-dd4d3"
      ))
    : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner : false,
     home: OnboardingScreen()
    );
  }
}