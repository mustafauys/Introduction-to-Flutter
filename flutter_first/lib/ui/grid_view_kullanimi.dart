import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 10),
                //borderRadius: new BorderRadius.all(new Radius.circular(20)),
                boxShadow: [
                  new BoxShadow(
                      color: Colors.red,
                      offset: new Offset(10, 5),
                      blurRadius: 20
                  )
                ],
                shape: BoxShape.circle,
                color: Colors.blue[100 * ((index + 1) % 8)],
                gradient: LinearGradient(
                    colors: [Colors.orange, Colors.red],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                image: DecorationImage(
                    image: AssetImage("assets/images/resim.jpg"),
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter)),
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Flutter $index",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),

          onTap: () => debugPrint("Flutter $index tıklanıldı.."),
          onDoubleTap: () => debugPrint("Flutter $index çift tıklanıldı.."),
          onLongPress: () => debugPrint("Flutter $index uzun basıldı.."),
          onHorizontalDragStart: (e) => debugPrint("Flutter $index uzun basıldı $e"),
        );
      },
    );
  }
}
/*
GridView.extent(
      //reverse: true,
      maxCrossAxisExtent: 100,
      primary: false,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter 1", textAlign: TextAlign.center,),
        ),

        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter 2", textAlign: TextAlign.center,),
        ),

        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter 3", textAlign: TextAlign.center,),
        ),

        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter 4", textAlign: TextAlign.center,),
        ),

        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter 5 ", textAlign: TextAlign.center,),
        ),

        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter 6 ", textAlign: TextAlign.center,),
        ),


      ],
    );
 */

/*
GridView.count(
      crossAxisCount: 3,
      reverse: true,
      primary: false,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter 1", textAlign: TextAlign.center,),
        ),

        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter 2", textAlign: TextAlign.center,),
        ),

        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter 3", textAlign: TextAlign.center,),
        ),

        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter 4", textAlign: TextAlign.center,),
        ),

        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter 5 ", textAlign: TextAlign.center,),
        ),

        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter 6 ", textAlign: TextAlign.center,),
        ),


      ],
    );
 */
