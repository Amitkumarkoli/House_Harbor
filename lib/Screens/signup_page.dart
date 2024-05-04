import 'package:flutter/material.dart';
import 'package:house_harbor/Screens/login_page.dart';


class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter your email',
                border:OutlineInputBorder()
              )),
            SizedBox(height: 20),
            TextField( 
              decoration: InputDecoration(
              labelText: 'Create your password',
              border: OutlineInputBorder(),
              )),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                }, 
                style: ButtonStyle(
                 minimumSize: MaterialStateProperty.all(
                  Size(double.infinity, 50)),
                 backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 105, 240, 174)),
                ),
                child: Text('SignUp'))
          ],
        ),
      ),
    );
  }
}