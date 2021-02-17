import 'package:flutter/material.dart';
import 'search.dart';
import 'add.dart';
import 'memberInformation_page.dart';
import 'gallery.dart';
import 'map.dart';
import 'login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}
class _HomeState extends State<MyApp> {
  int _currentIndex = 0;

  final List<Widget> _children = [Map(),login_page(),Add(),Gallery(),Member()];
  onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      resizeToAvoidBottomInset: false,
     /* appBar: AppBar(
        title: Text('My Flutter App'),
      ),*/
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTapped, // new
        currentIndex: _currentIndex,
        selectedFontSize: 0,
        unselectedFontSize: 0,// new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, color: Colors.black,),
            title: Text(' '),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black,),
            title: Text(' '),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined, color: Colors.black,),
            title: Text(' '),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.photo_rounded, color: Colors.black,),
            title: Text(' '),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black,),
            title: Text(' '),
          ),
        ],
      ),
    ),
    );
  }
}

