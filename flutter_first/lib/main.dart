import 'package:flutter/material.dart';
import 'package:flutter_first/ui/etkin_liste.dart';
import 'ui/liste.dart';

void main() {
  runApp(MaterialApp(
      title: "Flutter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Liste Konusu", style: TextStyle(color: Colors.white),),),
        body: EtkinListe(),
      ),
  ));
}
