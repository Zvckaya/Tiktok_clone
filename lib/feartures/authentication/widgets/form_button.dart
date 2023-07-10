import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class FormButton extends StatelessWidget {
  const FormButton({super.key, required this.disable});

  final bool disable;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 30),
        padding: EdgeInsets.symmetric(vertical: Sizes.size10),
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 30),
          style: TextStyle(
            color: disable ? Colors.grey.shade400 : Colors.white,
          ),
          child: Text(
            "Next",
            textAlign: TextAlign.center,
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.size5),
            color: disable
                ? Colors.grey.shade300
                : Theme.of(context).primaryColor),
      ),
    );
  }
}
