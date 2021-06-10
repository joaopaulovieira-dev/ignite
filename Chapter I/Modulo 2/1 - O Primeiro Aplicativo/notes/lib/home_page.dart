import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
        centerTitle: false,
      ),
      body: Column(
        children: [
          for (var i = 0; i < count; i++)
            Card(
              child: ListTile(
                title: Text('Nota adicionada', style: TextStyle()),
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(
            () {
              count = count + 1;
            },
          );
        },
      ),
    );
  }
}
