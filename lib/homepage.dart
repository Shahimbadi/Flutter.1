import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Contact",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Card(
              color: Colors.cyan,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/login(illustrator).png"),
                ),
                title: Text(
                  "Arya",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("2645946454554"),
                trailing: Icon(Icons.call),
              ),
            ),
            Card(
              color: Colors.red,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/login(illustrator).png"),
                ),
                title: Text(
                  "Shahimbadi",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("8086424577"),
                trailing: Icon(Icons.call),
              ),
            ),
            Card(
              color: Colors.blue,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/login(illustrator).png"),
                ),
                title: Text(
                  "Nived K Sailesh",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("2645946454554"),
                trailing: Icon(Icons.call),
              ),
            )
          ],
        ),
      ),
    );
  }
}
