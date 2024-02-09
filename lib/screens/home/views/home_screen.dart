// ignore_for_file: sized_box_for_whitespace

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar:ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      child: BottomNavigationBar(
         items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(icon: Icon(
            CupertinoIcons.graph_square_fill),
            label: "Stats"
          ),
        ]
      ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:FloatingActionButton(
        onPressed: (){},
        mini: true,
        shape: const CircleBorder(),
        child: Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(colors: [
               Color(0xFFFF8D6C),
               Color(0xFFE064F7),
               Color(0xFF00B2E7),
            ],transform:  GradientRotation(pi / 4),
            )
          ),
          child: const Icon(
            CupertinoIcons.add,
            color: Colors.white,
            )
        ),
      ),
    );
  }
}