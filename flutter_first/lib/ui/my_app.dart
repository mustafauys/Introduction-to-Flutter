import 'package:flutter/material.dart';
import 'Resim_ve_Buton_Turleri.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
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
          body: ResimveButtonTurleri()
      ),
    );
  }
}