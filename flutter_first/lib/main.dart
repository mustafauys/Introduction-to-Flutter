import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: "MaterialApp Title",
      home: MyHomePage(
        title: "My Home Page",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  int sayac = 0;

  MyHomePage({this.title}) {
    debugPrint("MyHomePage StateFull Widget Constructor");
  }

  @override
  State<StatefulWidget> createState() {
    debugPrint("MyHomePage Create State Tetiklendi");
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {

  MyHomePageState() {
    debugPrint("MyHomePageState Constructor Tetiklendi");
  }
    @override
    Widget build(BuildContext context) {
      debugPrint("MyHomePage Build Method Tetiklendi");
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              sayacDegeriniArttir();
              debugPrint("Sayaç Değeri Arttırıldı Set State Çağrıldı");
            });

          },
          child: Icon(Icons.add),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Butona Basılma Sayısı :"),
              Text(
                "${widget.sayac}",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      );
    }

  void sayacDegeriniArttir() {
    widget.sayac++;
    debugPrint("Sayaç Değeri : ${widget.sayac}");
  }
}

