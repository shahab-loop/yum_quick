import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final double width;
  final double height;
  final Color buttonColor;
  final String text;
  final VoidCallback onPressed;
  final Color textColor;
  final TextStyle? textStyle;

  const CustomElevatedButton({
    Key? key,
    required this.width,
    required this.height,
    required this.buttonColor,
    required this.text,
    required this.onPressed,
    this.textColor = Colors.white,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: Text(
          text,
          style: textStyle ??
              Theme.of(context).textTheme.displayMedium?.copyWith(
                color: textColor,
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
        ),
      ),
    );
  }
}
