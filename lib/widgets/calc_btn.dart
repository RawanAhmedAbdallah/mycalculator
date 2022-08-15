import 'package:flutter/material.dart';

class Calc_Btn extends StatelessWidget {
  final String text;
  final int fColor;
  final int textColor;
  final double textSize;
   Function callback;

   Calc_Btn({Key? key,
  required this.text,
  required this.fColor,
  required this.textColor,
  required this.textSize,
  required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        child: SizedBox(
          width: 80,
          height: 80,
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            onPressed: () => callback(text),
            color:  Color(fColor),
            textColor: Color(textColor),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ),
        ),
    );
  }
}

