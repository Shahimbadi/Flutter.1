import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SampleUI(),
  ));
}

class SampleUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Screenshot (1).png"),
                fit: BoxFit.fill)),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage("assets/images/Screenshot (1).png"),
                height: 100,
                width: 100,
              ),
            ),
            Text(
              "Screenshot",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        )),
      ),
    );
  }
}
