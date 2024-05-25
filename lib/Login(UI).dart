import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login_page(),
  ));
}

class Login_page extends StatefulWidget {
  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80, bottom: 30),
                child: Container(
                  child: SizedBox(
                    child: Image(
                        image: AssetImage("assets/images/login(illustrator).png"),
                        fit: BoxFit.contain),
                  ),
                ),
              ),
              Text(
                "Login",
                style: TextStyle(
                  color: Color(0xFF31506e),
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Please Sign in to continue.",
                style: TextStyle(
                    color: Color(0xFF31506e),
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Username",
                      labelStyle: TextStyle(
                        color: Color(0xFF31506e),
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xFF31506e),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      suffixIcon: Icon(
                        Icons.visibility_off,
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xFF31506e),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Remaind me next time",
                      style: TextStyle(
                        color: Color(0xFF31506e),
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      Icons.check_box,
                      size: 30,
                      color: Color(0xFF31506e),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF31506e),
                        minimumSize: Size(400, 60)),
                    onPressed: () {},
                    child: Text(
                      "Sign in",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color(0xFF31506e),
                          fontSize: 17,
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
