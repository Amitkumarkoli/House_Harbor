import 'package:flutter/material.dart';
import 'package:house_harbor/Screens/login_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen ({super.key});

  @override
  State<OnboardingScreen > createState() => _WelcomePageState();
}

class _WelcomePageState extends State<OnboardingScreen > {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(screenSize.height*0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/onboarding_image.jpeg'),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 29, 145, 240).withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3)
                            )
                          ]),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.05),
              Padding(
                padding: EdgeInsets.only(left: screenSize.height*0.07),
                child: Text(
                  'Find Your Dream',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.09,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: screenSize.height*0.04),
                child: Text(
                  'Home: Browse Our',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.09,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: screenSize.height*0.12),
                child: Text(
                  'Listing Now',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.09,
                    fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.05),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(370, 50),
                  backgroundColor: const Color.fromARGB(255, 67, 63, 63)),
                child: Row(
                  children: [ 
                    Padding(padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      'View Appartment',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.sizeOf(context).width * 0.05,
                          color: Colors.grey),
                    ),
                  ),
                  SizedBox(width: screenSize.height*0.06),
                  Icon(
                    Icons.arrow_forward,
                    size: MediaQuery.of(context).size.width * 0.10,
                    color: Colors.green,
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
