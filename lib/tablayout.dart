import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=> new Tabz();
}

class Tabz extends State<TabLayout> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: 'Tab 1',child: Text("sohit"),icon: Icon(Icons.directions_car)),
                Tab(text: 'Tab 2',child: Text("mohit"),icon: Icon(Icons.directions_transit)),
                Tab(text: 'Tab 3',child: Text("rohit"),icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(color: Colors.yellow),
              Container(color: Colors.orange),
              Container(color: Colors.red),
            ],
          ),
        ),
      ),
    );
  }

}
