import 'package:dynamic_calculator_flutter/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalButton extends StatelessWidget {
  final Color buttonColor;
  final String? buttonText;
  Color textColor = Colors.black;
  final VoidCallback? buttonTap;

  CalButton({this.buttonText, required this.buttonColor, this.buttonTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 70,
        width: 83,
        decoration: BoxDecoration(
          // Here we apply shadow
          borderRadius: BorderRadius.circular(40),
          boxShadow: [BoxShadow(color: Colors.black45 ,
              blurRadius: 3 ,
              offset: Offset(1.0 ,1.0))]
        ),
        child: ElevatedButton(
          onPressed: buttonTap,
          style:
              ButtonStyle(backgroundColor: WidgetStateProperty.all(buttonColor)),
          child: Text(
            "$buttonText ",
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.bold, fontSize: 30),
          ),

        ),
      ),
    );
  }
}
