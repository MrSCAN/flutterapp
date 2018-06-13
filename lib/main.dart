import 'package:flutter/material.dart';
import 'package:frenzychat/homepage.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      home: new HomePage(),
    );
  }
}
