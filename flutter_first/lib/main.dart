import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan, accentColor: Colors.orange),
      home: new Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter",
            style: TextStyle(fontSize: 24.0, color: Colors.white),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("FAB Tıklandı");
          },
          child: Icon(
            Icons.access_alarms,
            color: Colors.white,
          ),
        ),
        body: Container(
          color: Colors.cyan,
          child: Text(
            "Mustafa Uysal",
            style: TextStyle(fontSize: 48),
            textAlign: TextAlign.center,
          ),
          constraints: BoxConstraints.expand(width: 400, height: 400),
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(30),
        )),
      ),
  );
}
