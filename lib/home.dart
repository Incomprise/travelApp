import 'package:flutter/material.dart';

import 'package:travel_app/city.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  List cities =  [
    { 'name': 'Paris', 'image': 'assets/Paris.jpg' },
    { 'name': 'Marseille', 'image': 'assets/Marseille.jpg' },
    { 'name': 'Lyon', 'image': 'assets/Lyon.jpg' },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Voyage'),
        actions: <Widget>[Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ...cities.map((city) {
              return CardCity(name: city['name'], image: city['image']);
            })
          ],
        ),
      ),
    );
  }
}
