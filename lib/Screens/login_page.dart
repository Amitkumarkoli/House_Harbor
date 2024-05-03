import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                labelText: 'Username',
                border:OutlineInputBorder()
              )),
            SizedBox(height: 20),
            TextField( 
              decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
              )),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){}, 
                style: ButtonStyle(
                 minimumSize: MaterialStateProperty.all(
                  Size(double.infinity, 50)),
                 backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                ),
                child: Text('Login'))
          ],
        ),
      ),
    );
  }
}