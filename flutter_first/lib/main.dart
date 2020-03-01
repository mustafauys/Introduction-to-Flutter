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
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.add_circle,
                  size: 64,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.add_circle,
                  size: 64,
                  color: Colors.red,
                ),
                Icon(
                  Icons.add_circle,
                  size: 64,
                  color: Colors.green,
                ),
                Icon(
                  Icons.add_circle,
                  size: 64,
                  color: Colors.greenAccent,
                )
              ],
            ),
          )),
    ),
  );
}
