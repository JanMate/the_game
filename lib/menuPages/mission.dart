import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MissionPage extends StatelessWidget {
  const MissionPage();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(20.0)),
        FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.blueAccent,
            onPressed: () {
              Navigator.pushNamed(context, '/mission/longTerm');
            },
            child: Container(
              child: Center(
                  child: Text(
                    "Dlouhodobe",
                    style: TextStyle(fontSize: 20.0),
                  )
              ),
              width: 250,
              height: 100,
            )
        ),
        Padding(padding: EdgeInsets.all(20.0)),
        FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.blueAccent,
            onPressed: () {
              Navigator.pushNamed(context, '/mission/shortTerm');
            },
            child: Container(
              child: Center(
                  child: Text(
                    "Kratkodobe",
                    style: TextStyle(fontSize: 20.0),
                  )
              ),
              width: 250,
              height: 100,
              padding: EdgeInsets.all(0.8),
            )
        ),
      ],
    );
  }
}
