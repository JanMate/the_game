import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_game/model/taskDetailArguments.dart';

class TaskDetailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final TaskDetailArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text('Detail ukolu'),
        ),
        body: Center(
          child: Container(
            child: ListView(children: <Widget>[
                Text(args.title),
                Padding(padding: EdgeInsets.all(20.0)),
                Text(args.description),
                Padding(padding: EdgeInsets.all(20.0)),
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
                            "Splneno",
                            style: TextStyle(fontSize: 20.0),
                          )
                      ),
                      width: 250,
                      height: 100,
                    )
                ),
              ],
            ),
            padding: EdgeInsets.all(50),
            margin: EdgeInsets.all(10),
          ),

        )
    );
  }

}
