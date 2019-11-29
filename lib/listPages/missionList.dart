import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MissionListPage extends StatefulWidget {
  final String title;

  MissionListPage(this.title);

  @override
  MissionListState createState() => MissionListState();
}

class MissionListState extends State<MissionListPage> {
  List<bool> list = [
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text(this.widget.title),
            bottom: TabBar(
              tabs: [
                Tab(text: "Trideni"),
                Tab(text: "Zero waste"),
              ],
              unselectedLabelColor: Colors.black54,
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      child: Text((index * 10).toString() + ' %'),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2.0,
                              color: Colors.black
                          )
                      ),
                      padding: EdgeInsets.all(5.0),
                    ),
                    title: Text(
                        'Mission with very very long text. It has to be able show very so very long text. ' +
                            index.toString()),
                  );
                },
              ),
              ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      child: Text(((9 - index) * 10).toString() + ' %'),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2.0,
                              color: Colors.black
                          )
                      ),
                      padding: EdgeInsets.all(5.0),
                    ),
                    title: Text('Mission ' + index.toString()),
                  );
                },
              ),
            ],
          )),
    );
  }
}
