import 'package:flutter/material.dart';
import 'package:navigation/Pages/page_simple.dart';

class PageBottom extends StatefulWidget {
  const PageBottom({Key? key}) : super(key: key);

  @override
  _PageBottomState createState() => _PageBottomState();
}

class _PageBottomState extends State<PageBottom> {
  String? choixTransport;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BOTTOM"),
      ),
      body: Center(
          child: Column(
            children: [
              Text("Vous avez choisi : ${choixTransport}"),
              ElevatedButton(
                onPressed: bottom,
                child: Text("Show Bottom"),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context){
                        return PageSimple();
                      })
                  );
                },
                child: Text("Got To Simple"),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (BuildContext context){
                        return PageSimple();
                      })
                  );
                },
                child: Text("Got To Simple Replacement"),
              ),
            ],
          )
      ),
    );
  }

  Future<void> bottom() async{
    showModalBottomSheet(
        context: context,

        builder: (BuildContext contextBottom) {
          return Column(
            children: [
              SimpleDialogOption(
                padding: EdgeInsets.only(top: 20),
                onPressed: (){
                  setState(() {
                    choixTransport = "Voiture";
                  });
                  Navigator.pop(contextBottom);
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
                  Navigator.pop(contextBottom);
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
