import 'package:flutter/material.dart';

class ImageDescription extends StatefulWidget {
  const ImageDescription({super.key});

  @override
  State<ImageDescription> createState() => _ImageDescriptionState();
}

class _ImageDescriptionState extends State<ImageDescription> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    int starRating = 5;
    String numberOfReviews = '25';

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: screenSize.width * 0.9,
                        height: screenSize.width * 0.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/house1.jpg'),
                              alignment: Alignment.topCenter,
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          Icon(Icons.location_on),
                          Text(
                            '4821 Ridge Top Cir',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'The Midnight Oasis',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Nestled among the nature of the Ozarks,Midnight \nOasis is a dreamy retreat with gorgeous interior design \nand calm nature surrounding.',
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          for (int i = 0; i < starRating; i++)
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 20,
                            ),
                          const SizedBox(width: 5),
                          Text(
                            '($numberOfReviews Reviews)',
                            style: TextStyle(
                              fontSize: screenSize.width * 0.04,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                      const Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/owner_avatar.png'),
                            radius: 26,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Miller Wren(Owner)',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Phone: +1234567890',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(width: 30),
                                  Icon(Icons.phone),
                                  SizedBox(width:20),
                                  Icon(Icons.message)
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                      top: 10,
                      left: 10,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back))),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    height: 70,
                    width: screenSize.width * 0.5,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenSize.width * 0.1,
                            vertical: screenSize.width * 0.02),
                        backgroundColor:
                           const Color.fromARGB(255, 105, 240, 174),
                        foregroundColor: Colors.black,
                      ),
                      child: const Row(
                        children: [
                          Text(
                            'Book Now',
                            style: TextStyle(fontSize: 18),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Text(
                      "\$330/n",
                      style: TextStyle(
                      fontSize: screenSize.width * 0.1
                      ),
                    )
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
