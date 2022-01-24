import 'package:flutter/material.dart';
import 'package:travel_app/models/activity.model.dart';
import 'package:travel_app/datas/data.dart' as data;
import 'package:travel_app/models/trip.model.dart';
import 'package:travel_app/views/city/widgets/listActivity.dart';
import 'package:travel_app/views/city/widgets/listTrip.dart';
import 'package:travel_app/views/city/widgets/trip.dart';

class City extends StatefulWidget {
  final List<Activity> activities = data.activities;

  @override
  _CityState createState() => _CityState();
}

class _CityState extends State<City> {
  Trip trip = Trip(city: 'Organisation voyage', activities: [], date: DateTime.now());
  int index = 0;

  void setDate() {
    showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      initialDate: DateTime.now().add(Duration(days: 1)),
      lastDate: DateTime(2023),
    ).then((newDate) {
      if(newDate != null) {
        setState(() {
          trip.date = newDate;
        });
      }
    });
  }

  void switchIndex(newIndex) {
    setState(() {
      index = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.chevron_left),
        title: Text('Organisation voyage'),
        actions: <Widget>[
          Icon(Icons.more_vert),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TripOverview(setDate: setDate, trip: trip),
            Expanded(
              child: index == 0 ? ActivityList(activities: widget.activities) : TripActivityList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Découverte',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Mes activités',
          ),
        ],
        onTap: switchIndex,
      ),
    );
  }
}
