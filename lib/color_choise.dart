import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorChoise extends StatelessWidget {
Color color;
ColorChoise({required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(


        shape: BoxShape.circle,
          border: Border.all(
            color: color
          )
      ),
      child: CircleAvatar(
        radius:18,
        backgroundColor: color,
      )
    );
  }
}
