import 'package:flutter/material.dart';
import 'package:flutter_first/ui/custom_scroll_ve_slivers.dart';
import 'package:flutter_first/ui/etkin_liste.dart';
import 'package:flutter_first/ui/grid_view_kullanimi.dart';
import 'package:flutter_first/ui/navigasyon_islemleri.dart';
import 'ui/liste.dart';


void main() {
  runApp(MaterialApp(
      title: "Flutter Öğren",
      
      initialRoute: "CPage/DPage/FPage",

      routes: {
        '/'      : (context) => NavigasyonIslemleri(),
        'CPage' : (context) => CSayfasi(),
        '/DPage' : (context) => DSayfasi(),
        '/GPage' : (context) => GSayfasi(),
        '/FPage' : (context) => FSayfasi(),
        '/CPage/DPage' : (context) => DSayfasi(),
        '/CPage/DPage/FPage' : (context) => FSayfasi(),
        '/ListeSayfasi' : (context) => ListeSinifi(),
      },

    onGenerateRoute: (RouteSettings settings) {
        List<String> pathElemanlari = settings.name.split("/"); // /detay/$index  /urun/detay/id

        if (pathElemanlari[1] == 'detay') {
          return MaterialPageRoute(builder: (context) => ListeDetay(int.parse(pathElemanlari[2])));
        }
        return null;
    },

    onUnknownRoute: (RouteSettings settings) => MaterialPageRoute(builder: (context) => DSayfasi()),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
            brightness: Brightness.light
      ),
      //home: NavigasyonIslemleri(),
  ));
}
