
import 'package:first_app/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Trial2(),
  ));
}

class Trial2 extends StatefulWidget {
  const Trial2({super.key});

  @override
  State<Trial2> createState() => _TrialState();
}

class _TrialState extends State<Trial2> {
  GlobalKey<FormState> formkey= GlobalKey();
  bool showPass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 250, right: 60, left: 60),
              child: Text(
                "Login Page",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, right: 60, left: 60),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Username",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 60, left: 60),
              child: TextField(
                obscureText: showPass,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showPass) {
                            showPass = false;
                          } else {
                            showPass = true;
                          }
                        });
                      },
                      icon: showPass == true
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                    )),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, minimumSize: Size(200, 40)),
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Trial()));
                },
                child: Text("Not a user? Create an Account.")),
          ],
        ),
      ),
    );
  }
}
