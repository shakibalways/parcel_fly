import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parcel_fly_ui/view/screens/dasboard_page.dart';
import 'package:parcel_fly_ui/view/screens/log_in_screen.dart';
import 'package:parcel_fly_ui/view/screens/secend_screen.dart';
import 'package:parcel_fly_ui/view/screens/splash_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DasboardPage(),
    );
  }
}


