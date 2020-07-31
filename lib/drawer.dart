
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new Drawerz();

}

class Drawerz extends State<DrawerView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Drawer Layout"),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Sohit Sharma",textScaleFactor: 1.6),
                accountEmail: Text("sohit@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("V", style: TextStyle(fontSize: 40)),
                ),
              ),
              ListTile(
                trailing: Icon(Icons.home),
                title: Text("Home",style: TextStyle(fontSize: 18)),
                onTap: (){},
              ),
              ListTile(
                trailing: Icon(Icons.person),
                title: Text("About",style: TextStyle(fontSize: 18)),
                onTap: (){},
              ),
              ListTile(
                trailing: Icon(Icons.contact_mail),
                title: Text("Contact",style: TextStyle(fontSize: 18)),
                onTap: (){},
              ),
            ],
          ),
        )
      ),
    );
  }

}