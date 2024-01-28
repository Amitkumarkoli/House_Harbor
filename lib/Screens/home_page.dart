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
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal:10.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
                radius: 13,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
        ],
      ),
      body: const MyFeed(),
      bottomNavigationBar: BottomAppBar(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: const Icon(Icons.home),
          ),
          IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: const Icon(Icons.favorite),
          ),
          IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: const Icon(Icons.chat),
          ),
          IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: const Icon(Icons.settings),
          ),
        ]),
      ),
    );
  }
}

class MyFeed extends StatelessWidget {
  const MyFeed({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

     List<String> imageList = [
      'assets/image1.jpeg',
      'assets/image2.jpeg',
      'assets/image3.jpeg',
      'assets/image4.jpeg',
    ];
    // Sample data (It will be change aacording to data)
    String houseName = 'Rosewood Retreat';  // name of house
    double housePrice = 250000; // price of house
    // Sample star rating (out of 5)
    int starRating = 4; 
    // It is sample data
    int numberOfReviews = 23; 

    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ClipRRect(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ImageDescription()));
                  },
                  child: Container(
                    width: screenSize.width,
                    height: screenSize.width * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage('assets/house_image.jpeg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                      houseName,
                      style: TextStyle(
                        fontSize: screenSize.width * 0.06,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Text(
                  '\$$housePrice',
                  style: TextStyle(
                    fontSize: screenSize.width * 0.04,
                    fontWeight: FontWeight.bold,
                    color: Colors.green, // Adjust color as needed
                  ),
                ),
                ],
              ),
              const SizedBox(width: 0.90),
              Row(
              children: [
                // Display star rating using Icon widgets
                for (int i = 0; i < starRating; i++)
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                const SizedBox(width: 5),
                // Display the number of reviews
                Text(
                  '($numberOfReviews Reviews)',
                  style: TextStyle(
                    fontSize: screenSize.width * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
              const SizedBox(height: 20),
              // Using Horizontal scrolling for list of images
              SizedBox(height: 200, 
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          imageList[index],
                          width: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ])));
  }
}
