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
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(2),
                    color: Colors.cyan.shade100,
                    child: Text("D", style: TextStyle(fontSize: 24),),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(2),
                    color: Colors.cyan.shade200,
                    child: Text("A", style: TextStyle(fontSize: 24),),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(2),
                    color: Colors.cyan.shade300,
                    child: Text("R", style: TextStyle(fontSize: 24),),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(2),
                    color: Colors.cyan.shade400,
                    child: Text("T", style: TextStyle(fontSize: 24),),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.orange.shade200,
                child: Text("E", style: TextStyle(fontSize: 24),),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.orange.shade200,
                child: Text("R", style: TextStyle(fontSize: 24),),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.orange.shade300,
                child: Text("S", style: TextStyle(fontSize: 24),),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.orange.shade400,
                child: Text("L", style: TextStyle(fontSize: 24),),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.orange.shade500,
                child: Text("E", style: TextStyle(fontSize: 24),),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.orange.shade600,
                child: Text("R", style: TextStyle(fontSize: 24),),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.orange.shade700,
                child: Text(" İ", style: TextStyle(fontSize: 24),),
              ),
            ],
          )
      ),
    ),
  );
}
