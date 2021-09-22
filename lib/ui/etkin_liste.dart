import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EtkinListe extends StatelessWidget {
  List<Ogrenci> tumOgrenciler = [];

  @override
  Widget build(BuildContext context) {
    ogrenciVerileriniGetir();
    return ListView.separated(
        separatorBuilder: (context, index) {
          if (index % 4 == 0 && index != 0) {
            return Container(
              height: 2,
              color: Colors.blue,
              margin: EdgeInsets.all(5),
            );
          } else {
            return Container();
          }
        },
        itemCount: 20,
        
        itemBuilder: (context, index) {
          return Card(
            color:
                index % 2 == 0 ? Colors.red.shade100 : Colors.orange.shade100,
            elevation: 4,
            child: ListTile(
              leading: Icon(Icons.perm_contact_calendar),
              title: Text(tumOgrenciler[index]._isim),
              subtitle: Text(tumOgrenciler[index]._aciklama),
              trailing: Icon(Icons.add),
              onTap: () {
                debugPrint(tumOgrenciler[index].toString());
                toastMesajGoster(index, false);
                alertDialogGoster(context, index);
              },
              onLongPress: () {
                debugPrint("Uzun Basılan Eleman $index");
                toastMesajGoster(index, true);
              },
            ),
          );
        });
  }

  void ogrenciVerileriniGetir() {
    tumOgrenciler = List.generate(
        300,
        (index) => Ogrenci("Ogrenci $index Adı", "Öğrenci $index açıklaması",
            index % 2 == 0 ? true : false));
  }

  void alertDialogGoster(BuildContext ctx, int index) {
    showDialog(
        context: ctx,
        barrierDismissible: false,
        builder: (ctx) {
          return AlertDialog(
            title: Text("Alert Dialog Başlığı"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text("Öğrenci Adı: ${tumOgrenciler[index]._isim}"),
                  Text("Öğrenci Adı: ${tumOgrenciler[index]._aciklama}"),
                ],
              )
            ),
            actions: <Widget>[
              ButtonTheme.bar(
                child: ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: Text("Tamam"),
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                    ),
                    FlatButton(
                      child: Text("Kapat"),
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                    )
                  ],
                ),
              ),
            ],
          );
        });
  }

  void toastMesajGoster(int index, bool uzunBasilma) {
    Fluttertoast.showToast(
        msg: uzunBasilma
            ? "Uzun Basıldı :" + tumOgrenciler[index].toString()
            : "Tek Tıklama" + tumOgrenciler[index].toString(),
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        textColor: Colors.black,
        fontSize: 16.0);
  }
}

class Ogrenci {
  String _isim;
  String _aciklama;
  bool _cinsiyet;

  Ogrenci(this._isim, this._aciklama, this._cinsiyet);

  @override
  String toString() {
    return "Seçilen Öğrenci Adı: $_isim açıklaması: $_aciklama";
  }
}
