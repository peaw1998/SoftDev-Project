import 'package:flutter/material.dart';
import 'package:SoftDev/components/CoursePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: MyHomePage(title: 'Workout'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

  List<Widget> _tabList = [
    Container(
      color: Colors.teal[100],
    ),
   Container(
      color: Colors.red,
     child: Course(),
    ),
    Container(
      color: Colors.teal[100],
    ),
    Container(
      color: Colors.teal[100],
    ),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tabList.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title.toUpperCase()),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _tabList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (currentIndex) {
          setState(() {
            _currentIndex = currentIndex;
          });

          _tabController.animateTo(_currentIndex);
        },
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
