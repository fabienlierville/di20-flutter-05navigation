import 'package:flutter/material.dart';

class PageSimple extends StatefulWidget {
  const PageSimple({Key? key}) : super(key: key);

  @override
  _PageSimpleState createState() => _PageSimpleState();
}

class _PageSimpleState extends State<PageSimple> {
  String? choixTransport;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SIMPLE"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Vous avez choisi : ${choixTransport}"),
            ElevatedButton(
              onPressed: simple,
              child: Text("Show AlertDialog"),
            ),
          ],
        )
      ),
    );
  }

  Future<void> simple() async{
    showDialog(
        context: context,
        builder: (BuildContext contextSimple){
          return SimpleDialog(
            title: Text("Quel est votre moyen de transport"),
            children: [
              SimpleDialogOption(
                padding: EdgeInsets.only(top: 20),
                onPressed: (){
                  setState(() {
                    choixTransport = "Voiture";
                  });
                  Navigator.pop(contextSimple);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.directions_car),
                    Text("Voiture")
                  ],
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.only(top: 20),
                onPressed: (){
                  setState(() {
                    choixTransport = "Avion";
                  });
                  Navigator.pop(contextSimple);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.airplanemode_active),
                    Text("Avion")
                  ],
                ),
              ),
            ],
          );
        }
    );
  }

}
