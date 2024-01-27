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

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(leading: 
        IconButton(onPressed: () {
          Navigator.pop(context);}, icon: const Icon(Icons.arrow_back),              
          )),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            width: screenSize.width,
            height: screenSize.width*0.5,
            decoration: BoxDecoration( 
              borderRadius: BorderRadius.circular(15.0) ,
              image: const DecorationImage(image: AssetImage('assets/house1.jpg'),
              alignment: Alignment.topCenter,
              fit:BoxFit.cover
              ),
            ),
          ),
        ),
      ),
    );
  }
}