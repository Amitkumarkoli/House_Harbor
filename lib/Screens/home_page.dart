import 'package:flutter/material.dart';
import 'package:house_harbor/Screens/image_description.dart';

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
            SizedBox(width: 10),
            Text(
              'Lisa',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
        ],
      ),
      body: const MyFeed(),
      bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[ IconButton(
              onPressed: (){            
                setState(() {
                });
              }, 
              icon: const Icon(Icons.home),
            ),
            IconButton(
            onPressed: (){
              setState(() {
              });
            }, 
            icon: const Icon(Icons.favorite),
          ),
          IconButton(
            onPressed: (){
              setState(() {
              });
            }, 
            icon: const Icon(Icons.chat),
          ),
          IconButton(
            onPressed: (){
              setState(() {
              });
            }, 
            icon: const Icon(Icons.settings),
          ),
          ]
        ),
      ),
    );
  }
}


class MyFeed extends StatelessWidget {
  const MyFeed({super.key});

  @override
  Widget build(BuildContext context) {

    Size screenSize =  MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ImageDescription()));
                },
                child:  Container(
                  width: screenSize.width,
                  height: screenSize.width*0.5,
                  decoration: BoxDecoration( 
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(image: AssetImage('assets/house_image.jpeg'),
                    fit:BoxFit.cover
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
              Text('Rosewood Retreat',
                textAlign: TextAlign.right,
              style: TextStyle(
                  fontSize: screenSize.width*0.06,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(width:0.90),
           BackButton(onPressed: (){
               Navigator.pop(context);
              }
            ),
          ],
        ),
      ),
    );
  }
}
