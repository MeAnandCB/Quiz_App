import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Hero(
          tag: 'move',
          child: Center(
              child: Icon(
            Icons.person,
            size: 59,
          ))),
    );
  }
}
