import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  const ButtonWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w =MediaQuery.of(context).size.width;
    return Container(
      height: 40,
      width: w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.purple
      ),
      child: Center(child: Text(text,style: TextStyle(
        fontSize: 26,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),)),
    );
  }
}
