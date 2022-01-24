import 'package:flutter/material.dart';

import 'package:travel_app/views/home/widgets/city.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  List cities =  [
    { 'name': 'Paris', 'image': 'assets/Paris.jpg', 'checked': false },
    { 'name': 'Marseille', 'image': 'assets/Marseille.jpg', 'checked': false },
    { 'name': 'Lyon', 'image': 'assets/Lyon.jpg', 'checked': false },
  ];

  void switchChecked(city) {
    int index = cities.indexOf(city);
        setState(() {
        cities[index]['checked'] = !cities[index]['checked'];
    });
  }

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
              return CardCity(name: city['name'], image: city['image'], checked: city['checked'], updatedChecked: () { switchChecked(city);});
            })
          ],
        ),
      ),
    );
  }
}
