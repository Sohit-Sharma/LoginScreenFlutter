

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tabbarz extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car),text: "Car"),
                Tab(icon: Icon(Icons.directions_transit),text: "Train",),
                Tab(icon: Icon(Icons.directions_bike),text: "Bike",),
              ],
            ),
            title: Text('Tab Layout'),
          ),
          body: TabBarView(
            children: [
              Container(
                alignment: Alignment.center,
                  color: Colors.yellow,
                child: Text("Car",style: TextStyle(fontSize: 25)),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.green,
                child: Text("Train",style: TextStyle(fontSize: 25)),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.deepPurple,
                child: Text("Bike",style: TextStyle(fontSize: 25)),
              ),
            ],
          ),
        ),
      ),
    );
  }

}