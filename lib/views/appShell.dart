import 'package:budget_tracker/views/historyPage.dart';
import 'package:budget_tracker/views/homePage.dart';
import 'package:budget_tracker/views/trackerPage.dart';
import 'package:flutter/material.dart';

class Appshell extends StatefulWidget {
  const Appshell({super.key});

  @override
  State<Appshell> createState() => _AppshellState();
}

class _AppshellState extends State<Appshell> {
  final List<Widget> _pageList = [Homepage(), Trackerpage(), Historypage()];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Friendly Budget"),
        titleSpacing: 0,
        leading: Icon(Icons.wallet),
      ),
      body: Center(child: _pageList[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) => setState(() {
          _currentIndex = value;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes_rounded),
            label: "Track",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_rounded),
            label: "History",
          ),
        ],
      ),
    );
  }
}
