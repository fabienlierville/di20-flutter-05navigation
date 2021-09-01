import 'package:flutter/material.dart';
import 'package:navigation/Pages/page_alert.dart';
import 'package:navigation/Pages/page_bottom.dart';
import 'package:navigation/Pages/page_simple.dart';

class PageSnack extends StatelessWidget {
  const PageSnack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SNACK"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            callSnack(context);
          },
          child: Text("Show SnackBar"),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.warning), label: "Alert"),
          BottomNavigationBarItem(icon: Icon(Icons.forward), label: "Simple"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Bottom"),
        ],
        onTap: (int index){
          switch(index){
            case 0:
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context){
                    return PageAlert();
                  })
              );
              break;
            case 1:
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context){
                    return PageSimple();
                  })
              );
              break;
            case 2:
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context){
                    return PageBottom();
                  })
              );
              break;

          }
        },
      ),
    );
  }

  void callSnack(BuildContext context){
    SnackBar snackBar = SnackBar(
        content: Text("Message bien supprimé !"),
      duration: Duration(seconds: 2),
      backgroundColor: Colors.black54,
      action: SnackBarAction(
        label: "Annuler",
        textColor: Colors.lightBlueAccent,
        onPressed: (){
          print("Annuler");
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

}
