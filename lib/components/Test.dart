import 'package:SoftDev/components/CoursePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Project',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.directions_walk), title: Text("Course")),
          BottomNavigationBarItem(icon: Icon(Icons.alarm), title: Text("Clock")),
          BottomNavigationBarItem(icon: Icon(Icons.face), title: Text("User")),
        ],
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Course(),
      ),
    );
  }
}
