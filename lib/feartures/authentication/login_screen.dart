import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/feartures/authentication/email_screen.dart';
import 'package:tiktok_clone/feartures/authentication/sign_up_screen.dart';
import 'package:tiktok_clone/feartures/authentication/widgets/auth_button.dart';
import 'package:tiktok_clone/feartures/username_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void _onSignUpTap(BuildContext context) {
    Navigator.of(context)
        .pop(MaterialPageRoute(builder: (context) => SignUpScreen()));
  }

  void _onEmailTap(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => UsernameScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Sizes.size40),
        child: Column(children: [
          Gaps.v80,
          const Text(
            "Login up for TikTok",
            style:
                TextStyle(fontSize: Sizes.size24, fontWeight: FontWeight.w700),
          ),
          Gaps.v20,
          const Text(
            "Manage your account, check notifications, comment on videos, and more.",
            style: TextStyle(fontSize: Sizes.size16, color: Colors.black45),
            textAlign: TextAlign.center,
          ),
          Gaps.v40,
          AuthButton(
            onTap: _onEmailTap,
            icon: FaIcon(FontAwesomeIcons.user),
            text: "Use phone & emial",
          ),
          Gaps.v16,
          const AuthButton(
            icon: FaIcon(FontAwesomeIcons.apple),
            text: "Continue with Apple",
          )
        ]),
      )),
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        color: Colors.grey.shade50,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: Sizes.size32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account?"),
              Gaps.h5,
              GestureDetector(
                onTap: () => _onSignUpTap,
                child: Text(
                  'Sign up',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
