import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(widget.title),
        leading: const Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpeg'),
              radius: 13,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Lisa',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
        ],
      ),
      body: Row(
        children: [
          const Padding(padding: EdgeInsets.all(18)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                child: Container(
                  width: 350,
                  height: 160,
                  margin: const EdgeInsets.only(top: 80),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: const DecorationImage(
                        image: AssetImage('assets/house_image.jpeg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Rosewood Retreat',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
              BackButton(onPressed: (){
                Navigator.pop(context);
              },),
            ],
          ),
        ],
        
      ),
      
    );
  }
}
