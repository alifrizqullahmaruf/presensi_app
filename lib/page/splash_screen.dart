import 'dart:async';
import 'package:flutter/material.dart';
import 'package:presensi_app/page/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(300),
        color: Colors.amber,
        child: Image.network(
            "https://i.pinimg.com/236x/6d/33/2e/6d332e3dd8469e31ea9ef1e5fdcea606.jpg"),
      ),
    );
  }
}
