import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  //declaring variables
  final textColor;
  final color;
  final buttonText;
  final buttonTapped;

  MyButton({
    required this.textColor,
    required this.color,
    required this.buttonText,
    required this.buttonTapped,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: EdgeInsets.all(0.20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor ?? Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
