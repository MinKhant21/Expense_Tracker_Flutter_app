import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                        child: Icon(CupertinoIcons.person, color: Colors.black),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Kaung Min Khant",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            )
                          ]),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.settings)),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  color: Colors.red,
                  gradient: const LinearGradient(colors: [
                    Color(0xFFFF8D6C),
                    Color(0xFFE064F7),
                    Color(0xFF00B2E7),
                  ],
                  transform:  GradientRotation(pi/4),
                  ),
                  borderRadius: BorderRadius.circular(25)),
            )
          ],
        ),
      ),
    );
  }
}
