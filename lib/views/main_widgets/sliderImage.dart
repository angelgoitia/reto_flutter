import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class SliderImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    List _listImage = [
      "assets/main_0.svg",
      "assets/main_1.svg",
      "assets/main_2.svg",
    ];

    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 18/9,
        initialPage: 0,
        autoPlay: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
      ),
      items: _listImage.map((index) {
        return Builder(
          builder: (BuildContext context) {
            return SvgPicture.asset(
              index,
              alignment: Alignment.center,
            );
          },
        );
      }).toList(),
    );
  }
}