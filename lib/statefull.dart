import 'dart:async';

import 'package:first_app/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer((Duration(seconds: 3)), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Trial()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Text(
            "🔱",
            style: TextStyle(
              fontSize: 70,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
