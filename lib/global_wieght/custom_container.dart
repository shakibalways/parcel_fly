import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utilits/constant/color_list.dart';
import '../utilits/constant/image_list.dart';
import '../utilits/constant/text_list.dart';

class CustomContainer extends StatelessWidget {
  final String image;
  final String images;
  final String text;
  final String texts;
  final Color color;


  const CustomContainer({super.key, required this.image, required this.images, required this.text, required this.texts, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 210,
      decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.blue, width: 0.3)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(image),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Image.asset(images),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(text),
            SizedBox(
              height: 5,
            ),
            Text(texts),
          ],
        ),
      ),
    );
  }
}
