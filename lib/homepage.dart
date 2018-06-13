import 'package:flutter/material.dart';
import 'package:frenzychat/chatscreen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Frenzy chat'),
      ),
      body: new ChatScreen()   );
  }
}
