import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final double height;
  final double width;
  final String image;
  final String text0;
  final String text1;
  final String text2;
  const CustomBox(
      {super.key,
      required this.height,
      required this.width,
      required this.image,
      required this.text0,
      required this.text1,
      required this.text2,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 2),
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 1,
                  spreadRadius: 2)
            ]),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(image),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(text0),
                Text(
                  text1,
                  style: const TextStyle(color: Color(0xff6A7189)),
                ),
                Text(text2, style: const TextStyle(color: Color(0xff6A7189)))
              ],
            )
          ],
        ));
  }
}
