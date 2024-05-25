import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Assignment(),
  ));
}

class Assignment extends StatelessWidget {
  var name = ["Delhi", "Finland", "London", "Vancouver", "New York"];
  var country = ["India", "Europe", "UK", "Canada", "USA"];
  var image = [
    "assets/images/Delhi.jpg",
    "assets/images/finland.jpg",
    "assets/images/london.jpg",
    "assets/images/vancouver.jpg",
    "assets/images/newyork.jpg"
  ];
  var population = ["Population: 32.9 mill","Population: 5.54 mill","Population: 8.8 mill","Population: 2.6 mill","Population: 8.4 mill"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Cities Around World",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Card(
              color: Colors.orange,
              child: ListTile(
                horizontalTitleGap: 30,
                minVerticalPadding: 20,
                leading: Container(width: 150,
                  child: Image.asset(
                    image[index], fit: BoxFit.cover,
                  ),
                ),
                title: Text(name[index], style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(country[index], style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: Colors.black
                      ),),
                      Text(population[index], style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),)
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: name.length,
      ),
    );
  }
}
