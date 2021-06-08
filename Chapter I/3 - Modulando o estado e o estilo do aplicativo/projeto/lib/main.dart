import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ignite - Trilha Flutter',
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Color(0xff007FFF),
        scaffoldBackgroundColor: Color(0xff212121),
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Color(0xff007FFF)),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ignite - Trilha Flutter'),
        centerTitle: true,
      ),
      body: Center(
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'Contagem de toques do botão: \n$count',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count = count + 1;
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
