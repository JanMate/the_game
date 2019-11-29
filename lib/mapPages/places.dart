import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:the_game/components/flutterMapWidget.dart';

class MapPlacesPage extends StatefulWidget {
  @override
  MapPlacesState createState() => MapPlacesState();
}

class MapPlacesState extends State<MapPlacesPage> {
  static final List<String> items = ['Swapy', 'Kontejnery', 'Udalosti', 'Free'];
  String selected = items[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Okoli'),
        ),
        body: Center(
          child: Container(
            child: ListView(
              children: <Widget>[
                Container(
                  child: DropdownButton<String>(
                    value: selected,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(
                        color: Colors.blue
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        selected = newValue;
                      });
                    },
                    items: items.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Container(
                          child: Text(value),
                          width: 290,
                        ),
                      );
                    }).toList(),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(3),
                  ),
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.blueAccent,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      child: Center(
                          child: Text(
                        "Vlastni filtr",
                        style: TextStyle(fontSize: 20.0),
                      )),
                      width: 250,
                      height: 40,
                    )
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.blueAccent,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      child: Center(
                          child: Text(
                        "Hledat",
                        style: TextStyle(fontSize: 20.0),
                      )),
                      width: 250,
                      height: 40,
                    )
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                Container(
                  child: FlutterMapWidget(
                    position: new LatLng(51.5, -0.09),
                    markers: [
                      new Marker(
                        width: 80.0,
                        height: 80.0,
                        point: new LatLng(51.5, -0.09),
                        builder: (ctx) =>
                        new Container(
                          child: Icon(Icons.location_on),
                        ),
                      ),
                    ],
                    zoom: 13.0,
                  ),
                  width: 300,
                  height: 400,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.0,
                      color: Colors.black,
                    )
                  ),
                )
              ],
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
          ),
        )
    );
  }
}
