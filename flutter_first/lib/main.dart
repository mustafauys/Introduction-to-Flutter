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
              IntrinsicHeight(child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(4),
                      color: Colors.red.shade200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset("assets/images/mustafa.jpg"),
                          Text("Asset Image"),
                        ],
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(4),
                      color: Colors.red.shade200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset("assets/images/mustafa.jpg"),
                          Text("Network Image"),
                        ],
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(4),
                      color: Colors.red.shade200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            child: Text("Ali"),
                            backgroundColor: Colors.purple,
                            radius: 30,
                            foregroundColor: Colors.orange,
                          ),
                          Text("Circle Avatar"),
                        ],
                      ),
                    ),
                  )

                ],
              ),
              ),

              IntrinsicHeight(child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(4),
                      color: Colors.red.shade200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FadeInImage.assetNetwork(placeholder: "assets/images/loading.gif", image: "assets/images/mustafa.jpg"),
                          Text("Fadein Image"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              ),
            ],
          )),
    ),
  );
}
