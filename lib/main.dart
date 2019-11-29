import 'package:flutter/material.dart';
import 'package:the_game/mapPages/places.dart';
import 'package:the_game/menuPages/mission.dart';
import 'package:the_game/menuPages/task.dart';
import 'package:the_game/menuPages/home.dart';
import 'package:the_game/menu.dart';
import 'package:the_game/listPages/taskList.dart';
import 'package:the_game/settings.dart';

import 'detailPages/taskDetail.dart';
import 'listPages/missionList.dart';
import 'menuPages/learning.dart';
import 'menuPages/map.dart';

void main() => runApp(TheGameApp());

class TheGameApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EKO game',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MainWidget(),
      initialRoute: '/',
      routes: {
        '/mission/shortTerm': (context) => MissionListPage("Kratkodobe mise"),
        '/mission/longTerm': (context) => MissionListPage("Dlouhodobe mise"),
        '/task/oneDay': (context) => TaskListPage("Denni ukoly"),
        '/task/dispose': (context) => TaskListPage("Jednorazovy ukoly"),
        '/task/repeteable': (context) => TaskListPage("Opakujici ukoly"),
        '/task/detail': (context) => TaskDetailPage(),
        '/settings': (context) => SettingsPage(),
//        '/map/events': (context) => MapEventsPage(),
        '/map/places': (context) => MapPlacesPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainWidget extends StatefulWidget {
  MainWidget({Key key}) : super(key: key);

   @override
   _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  int _selectedIndex;
  Widget menuBar;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    MissionPage(),
    TaskPage(),
    HomePage(),
    LearningPage(),
    MapPage(),
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = 2;
    menuBar = MenuBar(this.updateSelectedIndex);
  }


  void updateSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text('EKO game'),
            actions: <Widget>[
              FlatButton(
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                onPressed: () {
                  Navigator.pushNamed(context, '/settings');
                },
                child: Container(
                  child: Icon(
                    Icons.settings,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: menuBar,
    );
  }
}
