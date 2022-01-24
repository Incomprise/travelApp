import 'package:flutter/material.dart';
import 'package:travel_app/models/activity.model.dart';

class ActivityCard extends StatelessWidget {
  final Activity activity;

  ActivityCard({ required this.activity });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      child: Image.asset(activity.image, fit: BoxFit.cover,),
    );
  }
}
