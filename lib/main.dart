import 'package:flutter/material.dart';

import 'package:travel_app/home.dart';

void main() {
  runApp(Travel());
}

class Travel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
