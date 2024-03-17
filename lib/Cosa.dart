import 'package:flutter/material.dart';

class Cosa extends StatelessWidget {
  final String title;
  final Color? boxColor;
  const Cosa({
    super.key,
    required this.title,
    this.boxColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 50,
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        color: boxColor ?? Colors.deepPurple,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: Center(
          child: Text(
        title,
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
