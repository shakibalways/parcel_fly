import 'dart:async';

import 'package:flutter/material.dart';
import 'package:parcel_fly_ui/view/screens/secend_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>const SecendScreen()

            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191D2C),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/vector/fast.png"),
            const SizedBox(height: 20,),
            Image.asset("assets/vector/Vector.png"),
            Image.asset("assets/vector/Vector (1).png"),
          ],
        ),
      ),
    );
  }
}
