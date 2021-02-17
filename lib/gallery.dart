import 'package:flutter/cupertino.dart';

class Gallery extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: <Widget>[
          SizedBox(height: 500),
          Text('gallery'),

        ]));
  }
}