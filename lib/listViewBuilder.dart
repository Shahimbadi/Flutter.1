import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListViewBuilder(),
  ));
}

class ListViewBuilder extends StatelessWidget {
  var name=["Manu","Ram","Meera"];
  var phone=["568765146","651614356","6541635454"];
  var image=["","",""];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Builder"),
      ),
      body: ListView.builder(itemBuilder: (context,index) {
        return Card(
        child: ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
          title: Text(name[index]),
          subtitle: Text(phone[index]),
          trailing: Icon(Icons.call),
        ),
        );
      },itemCount: name.length, ),
    );
  }
}
