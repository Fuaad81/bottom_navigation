// ignore_for_file: prefer_const_constructors

import 'package:bottom_navigation/add.dart';
import 'package:bottom_navigation/page1.dart';
import 'package:bottom_navigation/page2.dart';
import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  static const List<dynamic> options = [
    Center(
        child: Text(
      ' home',
      style: TextStyle(fontSize: 30),
    )),
    Drop(),
    Add(),
    Abc()
  ];
  void itemTap(int ind) {
    setState(() {
      index = ind;
    });
  }

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: 'profile',
          ),
        ],
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.blue,
        iconSize: 30,
        currentIndex: index,
        onTap: itemTap,
      ),
      body: options.elementAt(index),
    );
  }
}
