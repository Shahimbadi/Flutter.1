import 'package:first_app/icon.dart';
import 'package:first_app/login(statefull).dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Trial(),
  ));
}

class Trial extends StatefulWidget {
  const Trial({super.key});

  @override
  State<Trial> createState() => _TrialState();
}

class _TrialState extends State<Trial> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showPass = true;
  bool showConfirmPass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/App_bg.jpg"),
                  fit: BoxFit.fill)),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 200, right: 60, left: 60),
                  child: Text(
                    "Register Page",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60, right: 60, left: 60),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        labelText: "Name",
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        hintText: "Name",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                        )),
                    validator: (name) {
                      if (name!.isEmpty ||
                          !name.contains("@") ||
                          name.contains(".")) {
                        return "Please enter the valid email.";
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, right: 60, left: 60),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        labelText: "Username",
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        hintText: "Username",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                        )),
                    validator: (email) {
                      if (email!.isEmpty &&
                          !email.contains("@") &&
                          email.contains(".")) {
                        return "Please enter the valid email.";
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, right: 60, left: 60),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    obscureText: showPass,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
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
                              ? Icon(
                                  Icons.visibility_off,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.visibility,
                                  color: Colors.white,
                                ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                        )),
                    validator: (password) {
                      if (password!.isEmpty && password.length < 6) {
                        return "Please enter the valid password.";
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, right: 60, left: 60),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    obscureText: showConfirmPass,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                        labelText: "Confirm Password",
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        hintText: "Confirm Password",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (showConfirmPass) {
                                showConfirmPass = false;
                              } else {
                                showConfirmPass = true;
                              }
                            });
                          },
                          icon: showConfirmPass == true
                              ? Icon(
                                  Icons.visibility_off,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.visibility,
                                  color: Colors.white,
                                ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                        )),
                    validator: (confirmpassword) {
                      if (confirmpassword!.isEmpty &&
                          confirmpassword.length < 6) {
                        return "Please enter the valid password.";
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: Size(200, 40)),
                    onPressed: () {
                      var valid = formkey.currentState!.validate();
                      if (valid) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Icon1()));
                      } else {
                        return null;
                      }
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
                SizedBox(
                  height: 150,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Trial2()));
                    },
                    child: Text(
                      "Already have an Account? Click here to Login.",
                      style: TextStyle(color: Colors.white70),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
