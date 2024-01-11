import 'package:flutter/material.dart';
import 'package:house_harbor/Screens/home_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 185, 203, 215),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(   
                borderRadius: BorderRadius.circular(20.0),
                child: Expanded(
                  child: Container(
                    width: double.infinity,
                    height: screenSize.width * 0.8,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/house.jpeg'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 111, 156, 192).withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3)
                        )
                      ]
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
               Padding(
                padding: const EdgeInsets.only(left:50),
                child: Text(
                  'Find Your Dream',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.09, 
                    fontWeight: FontWeight.bold),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Home: Browse Our',
                  style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.09, 
                  fontWeight: FontWeight.bold),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 80),               
                child: Text('Listing Now',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.09,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(height: 90),
              ElevatedButton(
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(title: '',)));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(370, 50),
                  backgroundColor:  const Color.fromARGB(255, 67, 63, 63)
                ),
                child: const Text(
                  'View Appartment',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
