import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week7/chair_details_scrreen.dart';

void main(){

  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ChairDetailsScrreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
