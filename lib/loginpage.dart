import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Trial(),
  ));
}

class Trial extends StatelessWidget {
  const Trial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyanAccent,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 250, left: 60, right: 60),
              child: Text(
                "Login Page",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70, top: 50),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Username",
                    prefixIcon: Icon(Icons.person),
                    labelText: "Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70, top: 50),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.visibility_off),
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    minimumSize: Size(200, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60))),
                onPressed: () {},
                child: Text("Login")),

            TextButton(onPressed: (){}, child: Text("Not a user? Create an Account.")),
          ],
        ),
      ),
    );
  }
}
