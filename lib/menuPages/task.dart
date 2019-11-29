import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget {
  const TaskPage();

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
              Navigator.pushNamed(context, '/task/oneDay');
            },
            child: Container(
              child: Center(
                  child: Text(
                    "Denni",
                    style: TextStyle(fontSize: 20.0),
                  )
              ),
              width: 250,
              height: 100,
              padding: EdgeInsets.all(0.8),
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
              Navigator.pushNamed(context, '/task/dispose');
            },
            child: Container(
              child: Center(
                  child: Text(
                    "Jednorazovy",
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
              Navigator.pushNamed(context, '/task/repeteable');
            },
            child: Container(
              child: Center(
                  child: Text(
                    "Opakujici se",
                    style: TextStyle(fontSize: 20.0),
                  )
              ),
              width: 250,
              height: 100,
            )
        ),
      ],
    );
  }
}