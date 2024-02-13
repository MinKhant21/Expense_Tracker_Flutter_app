// ignore_for_file: sized_box_for_whitespace

import 'dart:math';

import 'package:expense_tracker_app/screens/add_expense/view/add_screen.dart';
import 'package:expense_tracker_app/screens/status/status_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  late Color selectedItem;
  late Color unselectedItem;

  @override
  void initState() {
    super.initState();
    selectedItem = Colors.green;
    unselectedItem = Colors.blue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                color: index == 0 ? selectedItem : unselectedItem,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.graph_square_fill,
                color: index == 1 ? selectedItem : unselectedItem,
              ),
              label: "Stats",
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the AddScreen when the labelLarge is pressed.
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddScreen()));
        },
        mini: true,
        shape: const CircleBorder(),
        child: Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color(0xFFFF8D6C),
                Color(0xFFE064F7),
                Color(0xFF00B2E7),
              ],
              transform: GradientRotation(pi / 4),
            ),
          ),
          child: const Icon(
            CupertinoIcons.add,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
      body: index == 0 ? const MainView() : StatusScreen(),
    );
  }
}
