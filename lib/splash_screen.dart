import 'package:dairy_farm_app/onboarding.dart';
import 'package:flutter/material.dart';
import 'dart:async';
// import 'onboarding_screen.dart'; // agla screen jahan jana hai

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Splash screen timer
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onboarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Ya blue etc. Figma se match kro
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App Logo
            Image.asset('assets/images/splash.png', height: 200),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
