import 'package:flutter/material.dart';
import 'package:house_harbor/Screens/home_page.dart';
import 'package:house_harbor/Screens/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/image/background_image.png"),
          fit: BoxFit.cover,
          ),),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.white,
            )),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.white,
            )),
            SizedBox(height: 25),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage()));
                },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
                  backgroundColor: MaterialStateProperty.all<Color>( Color.fromARGB(255, 105, 240, 174)),
                ),
                child: Text('Login')),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",
                    style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline)),
                SizedBox(width: 5),
                TextButton( 
                  onPressed: () {
                    Navigator.push( context, MaterialPageRoute(builder: (context) => SignupPage()));
                  },
                child: Text("SignUp")),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
