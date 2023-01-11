// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({Key? key}) : super(key: key);

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  List images = [
    "assets/images/Img/10.png",
    "assets/images/Img/1.jpg",
    "assets/images/Img/2.jpg",
    "assets/images/Img/4..jpg",
    "assets/images/Img/5.png",
    "assets/images/Img/6.jpg",
    "assets/images/Img/7.jpg",
    "assets/images/Img/8.jpg",
    "assets/images/Img/9.jpg"
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            onPageChanged: (index, reason) =>
                setState(() => activeIndex = index),
            height: 90.0,
            autoPlay: true,
            enlargeCenterPage: true,
          ),
          items: images.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  // width: 350,
                  margin: const EdgeInsets.symmetric(horizontal: 0.5),
                  // decoration: const BoxDecoration(color: Colors.amber),
                  child: Center(
                    child: Image.asset(
                      i.toString(),
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(
          height: 10,
        ),
        buildIndicator(),
      ],
    );
  }

  buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: 9,
        effect: const JumpingDotEffect(
          dotWidth: 10,
          dotHeight: 10,
          dotColor: Color.fromARGB(251, 179, 181, 179),
        ),
      );
}
