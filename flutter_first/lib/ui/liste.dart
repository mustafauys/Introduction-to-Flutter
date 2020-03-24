import 'package:flutter/material.dart';

class ListeKonusu extends StatelessWidget {
  //Liste için veri kaynağı oluştur
  List<int> listeNumaralari = List.generate(300, (index) => index);
  List<String> listeAltBaslik =
      List.generate(300, (index) => "Liste elemanı alt başlık $index");

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: listeNumaralari
            .map((oankieleman) => Column(
                  children: <Widget>[
                    Container(
                      child: Card(
                          color: Colors.red.shade200,
                          margin: EdgeInsets.all(10),
                          elevation: 10,
                          child: ListTile(
                            leading: CircleAvatar(
                              child: Icon(Icons.android),
                              radius: 12,
                            ),
                            title: Text("Liste Eleman Başlık $oankieleman"),
                            subtitle: Text(listeAltBaslik[oankieleman]),
                            trailing: Icon(Icons.add_circle),
                          )),
                    ),
                  ],
                ))
            .toList());
  }
}
/*

<Widget>[
    Column(
    children: <Widget>[
    Container(
    child: Card(
    color: Colors.teal.shade100,
        margin: EdgeInsets.all(10),
        elevation: 10,
        child: ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.android),
            radius: 12,
          ),
          title: Text("Liste Eleman Başlık"),
          subtitle: Text("Liste Elemanı Alt Başlık"),
          trailing: Icon(Icons.add_circle),
        )),
    ),
    Divider(color: Colors.orange, height: 0, indent: 20,),
    ],
 */
