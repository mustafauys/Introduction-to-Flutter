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
            children: <Widget>[
              Text(
                "Resim Ve Buton Türleri",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/images/mustafa.jpg"),
                        Text("Asset Image"),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.network(""),
                        Text("Network"),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                        child: Text("Ali"),
                          backgroundColor: Colors.purple,
                          foregroundColor: Colors.orange,
                        ),
                        Text("Circle Avatar"),
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
    ),
  );
}
