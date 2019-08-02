// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: SelectLanguageRoute(),
  ));
}

class CircleButton extends StatelessWidget {
  final double size;
  final Color buttonColor, iconColor;
  final IconData icon;
  final String label;
  final Function onTap;

  CircleButton(
      {@required this.size,
      @required this.buttonColor,
      @required this.iconColor,
      @required this.icon,
      @required this.label,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(size * 2),
            child: InkWell(
              //onTap: onTap,
              borderRadius: BorderRadius.circular(size * 2),
              splashColor: buttonColor,
              child: Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(size * 2),
                    color: buttonColor),
                child: Icon(
                  icon,
                  color: iconColor,
                  size: size - size / 3,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          //Text(label)
          Text(label,
              style: new TextStyle(
                fontSize: 25.0,
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}

class ButtonInformation {
  double size;
  IconData icon;
  Color buttonColor, iconColor;
  String text;
  bool onTap;

  ButtonInformation(
      {this.size,
      this.icon,
      this.buttonColor,
      this.iconColor,
      this.text,
      this.onTap});
}

ButtonInformation getButtonInfo(int position) {
  switch (position) {
    case 0:
      return ButtonInformation(
          size: 100.0,
          icon: Icons.looks_one,
          buttonColor: Colors.white,
          iconColor: Colors.blue,
          text: 'Numbers',
          onTap: true);
      break;
    case 1:
      return ButtonInformation(
          size: 100,
          icon: Icons.event_note,
          buttonColor: Colors.white,
          iconColor: Colors.green,
          text: 'Dates',
          onTap: true);
      break;
    case 2:
      return ButtonInformation(
          size: 100,
          icon: Icons.access_time,
          buttonColor: Colors.white,
          iconColor: Colors.red,
          text: 'Time',
          onTap: true);
      break;
    case 3:
      return ButtonInformation(
          size: 100,
          icon: Icons.child_care,
          buttonColor: Colors.white,
          iconColor: Colors.indigo,
          text: 'Age',
          onTap: true);
      break;
    case 4:
      return ButtonInformation(
          size: 100,
          icon: Icons.local_florist,
          buttonColor: Colors.white,
          iconColor: Colors.pink,
          text: 'Living Things',
          onTap: true);
      break;
    case 5:
      return ButtonInformation(
          size: 100,
          icon: Icons.casino,
          buttonColor: Colors.white,
          iconColor: Colors.teal,
          text: 'Objects',
          onTap: true);
      break;
    case 6:
      return ButtonInformation(
          size: 100,
          icon: Icons.public,
          buttonColor: Colors.white,
          iconColor: Colors.purple,
          text: 'Everything',
          onTap: true);
      break;
    case 7:
      return ButtonInformation(
          size: 100,
          icon: Icons.keyboard_backspace,
          buttonColor: Colors.white,
          iconColor: Colors.black,
          text: 'Go Back',
          onTap: true);
      break;
    default:
      return ButtonInformation(
          size: 100,
          icon: Icons.keyboard_backspace,
          buttonColor: Colors.white,
          iconColor: Colors.black,
          text: 'error',
          onTap: true);
      break;
  }
}

class SelectLanguageRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Practice"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: Cross,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('kor.png'),
                ),
              ),
              child: new FlatButton(
                  padding: EdgeInsets.all(0.0), onPressed: () {}, child: null),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('/lib/images/kor.png'),
                ),
              ),
              child: new FlatButton(
                  padding: EdgeInsets.all(0.0), onPressed: () {}, child: null),
            ),
            /*FloatingActionButton(
                onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChineseRoute()),
                    );
                    },
                child: Text("🇯🇵"),
                backgroundColor: Colors.white,
              ),*/
          ],
        ),
      ),
    );
  }
}

class KoreanRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //title: Text('First Route'),
      //),
      body: Center(
        child: RaisedButton(
          child: Text('Go Back'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

class JapaneseRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //title: Text('First Route'),
      //),
      body: Center(
        child: RaisedButton(
          child: Text('Go Back'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

/*body: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 2,
            padding: const EdgeInsets.all(20.0),
            crossAxisSpacing: 0.0,
            // Generate 8 widgets that display their index in the List.
            children: List.generate(8, (position) {
              ButtonInformation info = getButtonInfo(position);
              return CircleButton(
                  size: 125,
                  label: info.text,
                  buttonColor: info.buttonColor,
                  icon: info.icon,
                  iconColor: info.iconColor,
                  onTap: info.onTap);
            }))*/
