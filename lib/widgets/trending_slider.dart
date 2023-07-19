import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TrendingSlider extends StatelessWidget {
  const TrendingSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const hSlide = 300.0;
    const vpFraction = 0.55;
    const sDuration = 3;
    const radius = 12.0;

    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: 10,
        options: CarouselOptions(
          height: hSlide,
          autoPlay: true,
          viewportFraction: vpFraction,
          enlargeCenterPage: true,
          pageSnapping: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: const Duration(seconds: sDuration),
        ),
        itemBuilder: (ctx, itemIdx, pageViewIdx) => ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: Container(height: 300, width: 200, color: Colors.amber)),
      ),
    );
  }
}
