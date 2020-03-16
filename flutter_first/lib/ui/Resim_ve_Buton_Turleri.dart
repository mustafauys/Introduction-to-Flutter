import 'package:flutter/material.dart';

class ResimveButtonTurleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Text(
          "Resim Ve Buton Türleri",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade100,
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
                      Image.asset("assets/images/resim.jpg"),
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
                        backgroundColor: Colors.cyan,
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
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FadeInImage.assetNetwork(
                          placeholder: "assets/images/loading.gif",
                          image: "assets/images/mustafa.jpg"),
                      Text("Fadein Image"),
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
                      FlutterLogo(
                        size: 60,
                        colors: Colors.orange,
                        style: FlutterLogoStyle.horizontal,
                        textColor: Colors.black,
                      ),
                      Text("Flutter Logo"),
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
                      Expanded(
                        child: Placeholder(
                          color: Colors.red,
                          strokeWidth: 6,
                        ),
                      ),
                      Text("Placeholder Widget"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RaisedButton(
                child: Text("Mustafa Uysal"),
                color: Colors.orange,
                onPressed: () => debugPrint("Fat Arrowlu Fonksiyon"),
              ),
              RaisedButton(
                child: Text("Flutter ve Dart Öğrenme"),
                elevation: 12,
                textColor: Colors.yellow,
                onPressed: () {
                  debugPrint("Normal lambda expression");
                  debugPrint("İkinci Satır");
                },
                color: Colors.blue,
              ),
              RaisedButton(
                child: Text("Hızla Devam Ediyor"),
                elevation: 12,
                textColor: Colors.black,
                onPressed: () {
                  uzunMethod();
                },
                color: Colors.red,
              ),
              RaisedButton(
                child: Text("Çalışmaya Devam"),
                elevation: 12,
                textColor: Colors.black,
                onPressed: uzunMethod,
                color: Colors.yellow,
              ),
              IconButton(
                  icon: Icon(
                    Icons.add_circle_outline,
                    size: 32,
                  ),
                  onPressed: () {}),
              FlatButton(onPressed: (){}, child: Text("Flat Button", style: TextStyle(fontSize: 24),)),
            ],
          ),
        )
      ],
    );
  }

  void uzunMethod() {
    debugPrint("Çok uzun içerikli fonksiyon");
  }

}
