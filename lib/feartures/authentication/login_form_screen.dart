import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/feartures/authentication/widgets/form_button.dart';
import 'package:tiktok_clone/feartures/onboarding/interests_screen.dart';

class LoginFormScreen extends StatefulWidget {
  const LoginFormScreen({super.key});

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Map<String, String> formData = {};

  void _onSubmitTap() {
    if (_formKey.currentState != null) {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => InterestsScreen()));
      }
    }
  }

  void _onNextTap() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const InterestsScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Sizes.size36,
        ),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                Gaps.v28,
                TextFormField(
                  decoration: InputDecoration(hintText: 'Email'),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "Plase write your email";
                    }
                    return null;
                  },
                  onSaved: (newVal) {
                    if (newVal != null) {
                      formData['email'] = newVal;
                    }
                  },
                ),
                Gaps.v16,
                TextFormField(
                  decoration: InputDecoration(hintText: 'Password'),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "Plase write your password";
                    }
                  },
                  onSaved: (newVal) {
                    if (newVal != null) {
                      formData['password'] = newVal;
                    }
                  },
                ),
                Gaps.v28,
                GestureDetector(
                    onTap: _onSubmitTap, child: FormButton(disable: false))
              ],
            )),
      ),
    );
  }
}
