// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class OldTutorialSceen extends StatefulWidget {
  const OldTutorialSceen({super.key});

  @override
  State<OldTutorialSceen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<OldTutorialSceen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.size24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gaps.v36,
                    Text(
                      "Watch cool videos!",
                      style: TextStyle(
                        fontSize: Sizes.size36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gaps.v16,
                    Text(
                      "Videos are personalized for you based on what you watch, like, and share.",
                      style: TextStyle(
                        fontSize: Sizes.size16,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.size24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gaps.v36,
                    Text(
                      "Follow the rules",
                      style: TextStyle(
                        fontSize: Sizes.size36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gaps.v16,
                    Text(
                      "Videos are personalized for you based on what you watch, like, and share.",
                      style: TextStyle(
                        fontSize: Sizes.size16,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.size24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gaps.v36,
                    Text(
                      "Enjoy the ride",
                      style: TextStyle(
                        fontSize: Sizes.size36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gaps.v16,
                    Text(
                      "Videos are personalized for you based on what you watch, like, and share.",
                      style: TextStyle(
                        fontSize: Sizes.size16,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            child: Container(
          padding: EdgeInsets.symmetric(vertical: Sizes.size48),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            TabPageSelector(
              selectedColor: Colors.black38,
            )
          ]),
        )),
      ),
    );
  }
}
