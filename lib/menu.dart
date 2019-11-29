import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MenuBar extends StatefulWidget {
  Function updateSelectedIndex;
  _MenuWidgetState parentState;

  MenuBar(this.updateSelectedIndex);

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuBar> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      this.widget.updateSelectedIndex(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.ac_unit),
          title: Text('Mise'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.work),
          title: Text('Ukoly'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          title: Text('Uceni'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          title: Text('Mapy'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
    );
  }
}