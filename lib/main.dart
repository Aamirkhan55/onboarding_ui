import 'package:flutter/material.dart';
import 'package:onboarding_ui/ui/screen/onBoarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'OnBoarding',
      debugShowCheckedModeBanner: false,
      home:  OnBoardingPage(),
    );
  }
}