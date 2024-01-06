import 'package:flutter/material.dart';
import 'package:intuc/view/edit_profile_page/edit_profile.dart';
import 'package:intuc/view/opening_pages/signup_page/signup_page.dart';
import 'package:intuc/view/opening_pages/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
