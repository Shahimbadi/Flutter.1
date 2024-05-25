import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Icon1(),
  ));
}

class Icon1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.facebook,
              size: 60,
              color: Colors.blue,
            ),
            Text(
              "facebook",
              style: TextStyle(color: Colors.white, fontSize: 50),
            )
          ],
        ),
      ),
    );
  }
}
