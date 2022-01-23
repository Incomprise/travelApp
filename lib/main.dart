import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(Travel());
}

class Travel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text('Voyage'),
          actions: <Widget>[Icon(Icons.more_vert)],
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              elevation: 5,
              margin: EdgeInsets.all(15),
              child: Container(
                height: 150,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.asset('assets/Paris.jpg', fit: BoxFit.cover),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.all(15),
              child: Container(
                height: 150,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.asset('assets/Marseille.jpg', fit: BoxFit.cover),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.all(15),
              child: Container(
                height: 150,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.asset('assets/Lyon.jpg', fit: BoxFit.cover),
                  ],
                ),
              ),
            ),
          ],
          ),
        ),
      ),
    );
  }
}
