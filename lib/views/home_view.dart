import 'package:counter_mobx/controllers/counter.dart';
import 'package:counter_mobx/views/hello_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: Observer(
                builder: (BuildContext context) => Text(
                  "${counter.numClick}",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
              ),
            ),
            RaisedButton(
              child: Text('Go to Hello View ->'),
              elevation: 5,
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => new HelloView()
                ));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
