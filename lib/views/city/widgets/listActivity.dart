import 'package:flutter/material.dart';
import 'package:travel_app/models/activity.model.dart';
import 'package:travel_app/views/city/widgets/activity.dart';

class ActivityList extends StatelessWidget {
  final List<Activity> activities;

  ActivityList({ required this.activities });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 1,
      crossAxisSpacing: 1,
      crossAxisCount: 2,
      children: activities.map((activity) => ActivityCard(
          activity: activity
      )).toList(),
    );
  }
}
