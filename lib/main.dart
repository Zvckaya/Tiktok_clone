import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/feartures/authentication/sign_up_screen.dart';

void main() {
  runApp(const TikTokApp());
}

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok Clone',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            elevation: 0,
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(
                fontSize: Sizes.size16 + Sizes.size2,
                fontWeight: FontWeight.w600,
                color: Colors.black)),
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Color(0xFFE9435A),
      ),
      home: const SignUpScreen(),
    );
  }
}
