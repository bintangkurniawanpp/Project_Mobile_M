import 'package:flutter/material.dart';
import 'package:rank_education/ui/page/HomePage.dart';
import 'package:rank_education/ui/page/ExerciseQuisPage.dart';
import 'package:rank_education/ui/page/Settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rank Education",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    ExerciseQuis(),
    Setting(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() => _currentIndex = index);
        },
        currentIndex: _currentIndex, 
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Beranda'),
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text('Quis'),
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Pengaturan'),
            ),
        ]),      
    );
  }
}

