import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:toast/toast.dart';
import 'package:geolocator/geolocator.dart';

var data;
Position position;

class Additional extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new AdditionalScreen();

}

class AdditionalScreen extends State<Additional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child:   RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text('GET API DATA'),
              onPressed: (){
                getData();
                Toast.show(data, context, duration: Toast.LENGTH_LONG, gravity:  Toast.CENTER);
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child:   RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text('GET LOCATION'),
              onPressed: (){
                getLocation();
                double latitude=position.latitude;
                double longitude=position.longitude;
                Toast.show(latitude.toString()+" , "+longitude.toString(), context, duration: Toast.LENGTH_LONG, gravity:  Toast.CENTER);
              },
            ),
          ),
        ],
      ),
    );
  }

  void getData() async{
    http.Response response= await http.get('https://api.covid19api.com/summary');

    if(response.statusCode==200){
        data=response.body;
      print(data);
    }else{
      print(response.statusCode);
    }

  }

  void getLocation() async{
     position=await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.lowest);
  }


}