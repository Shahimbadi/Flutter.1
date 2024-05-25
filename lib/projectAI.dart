import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cities Around World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Cities Around World'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  List<City> cities = [
    City(name: 'Delhi', country: 'India', population: '32.9 mill', image: 'assets/images/login(illustrator).png'),
    City(name: 'Finland', country: 'Europe', population: '5.54 mill', image: 'assets/images/login(illustrator).png'),
    City(name: 'London', country: 'UK', population: '8.8 mill', image: 'assets/images/login(illustrator).png'),
    City(name: 'Vancouver', country: 'Canada', population: '2.6 mill', image: 'assets/images/login(illustrator).png'),
    City(name: 'New York', country: 'USA', population: '8.4 mill', image: 'assets/images/login(illustrator).png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        backgroundColor: Colors.orange[900],
        title: Center(
          child: Text(title, style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Card(
              color: Colors.orange,
              child: ListTile(
                leading: Image.asset(cities[index].image, fit: BoxFit.fitHeight,),
                title: Text(cities[index].name),
                subtitle: Text('Population: ${cities[index].population}'),
              ),
            ),
          );
        },
      ),
    );
  }
}

class City {
  var name;
  var country;
  var population;
  var image;

  City({required this.name, required this.country, required this.population, required this.image});
}
