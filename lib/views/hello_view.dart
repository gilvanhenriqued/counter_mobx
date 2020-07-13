import 'package:counter_mobx/controllers/counter.dart';
import 'package:flutter/material.dart';

class HelloView extends StatefulWidget {
  @override
  _HelloViewState createState() => _HelloViewState();
}

class _HelloViewState extends State<HelloView> {
  final counterController = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Text('Hello! You have ${counterController.numClick} points!'),
      ),
    );
  }
}