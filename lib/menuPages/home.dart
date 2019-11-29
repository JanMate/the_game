import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int progress = 11;
  int level = 3;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Container(
                child: Center(
                    child: Text(
                  progress.toString() + ' %',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
                width: 50,
              ),
              Container(
                child: null,
                width: 100,
              ),
              Container(
                child: Center(
                    child: Text(
                  'Level: ' + level.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
                width: 100,
              ),
            ],
          ),
          height: 50,
        ),
        Container(
          child: Center(
              child: Icon(
            Icons.android,
            size: 200,
          )),
          height: 500,
        ),
      ],
    );
  }
}
