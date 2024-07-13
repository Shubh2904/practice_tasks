import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Image Slider Example')),
        body: ImageSlider(),
      ),
    );
  }
}

class ImageSlider extends StatelessWidget {
  
  const ImageSlider({super.key});

  static const List<String> imgList = [
    'assets/2.jpg',
    'assets/3.jpg',
    'assets/4.jpg',
    'assets/5.jpg',
    'assets/6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 400.0,
          autoPlay: true,
          // enlargeCenterPage: true,
          // enlargeFactor: 3,
          aspectRatio: 16/9,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          pauseAutoPlayOnTouch: true,
          scrollDirection: Axis.horizontal,

        ),
        
        items: imgList.map((item) => Container(
          child: Center(
            child: Image.asset(item, fit: BoxFit.cover, width: 1000)
          ),)
          ).toList(),
      ),
    );
  }
}
