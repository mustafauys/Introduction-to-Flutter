import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        /*textTheme: TextTheme(
          display1: TextStyle(fontSize: 12),
        ),
       */
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
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {

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
              _sayacDegeriniArttir();
              debugPrint("Sayaç Değeri Arttırıldı Set State Çağrıldı");
            });

          },
          child: Icon(Icons.add),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(child: Text("Arttır"),color: Colors.green, onPressed: (){
                _sayacDegeriniArttir();
              },),
              Text(
                "${widget.sayac}",
                style: Theme.of(context).textTheme.display1.copyWith(
                  color: widget.sayac < 0 ? Colors.red : Colors.green
                )
              ),
              RaisedButton(child: Text("Azalt"),color: Colors.red, onPressed: (){
                _sayacDegeriniAzalt();
              },),
            ],
          ),
        ),
      );
    }

  void _sayacDegeriniArttir() {
    setState(() {
      widget.sayac++;
      debugPrint("Sayaç Değeri : ${widget.sayac}");
    });

  }

  void _sayacDegeriniAzalt() {
    setState(() {
      widget.sayac--;
      debugPrint("Sayaç Değeri : ${widget.sayac}");
    });

  }
}

