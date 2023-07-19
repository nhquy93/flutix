import 'package:flutter/material.dart';

class MoviesSlider extends StatelessWidget {
  const MoviesSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const hBox = 200.0;
    const radius = 8.0;

    return SizedBox(
      height: hBox,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (ctx, idx) => Padding(
          padding: const EdgeInsets.all(radius),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: Container(
              color: Colors.amber,
              height: hBox,
              width: 150,
            ),
          ),
        ),
      ),
    );
  }
}
