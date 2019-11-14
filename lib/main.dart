import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Galary app',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Galary'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int imageNumber = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FlatButton(
        color: Colors.transparent,
        onPressed: () {
          setState(() {
            if (imageNumber != 22) {
              imageNumber++;
            } else {
              imageNumber = 1;
            }
          });
        },
        child: Card(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  'images/img$imageNumber.png',
                  width: 600.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
