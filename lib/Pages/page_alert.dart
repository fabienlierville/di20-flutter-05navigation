import 'package:flutter/material.dart';

class PageAlert extends StatelessWidget {
  const PageAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ALERT"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            alerte(context);
          },
          child: Text("Show AlertDialog"),
        ),
      ),
    );
  }

  Future<void> alerte(BuildContext context) async{
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext contextDialog){
          return AlertDialog(
            title: Text("Voulez vous supprimer ... ?"),
            content: Text("Attention à ce que vous faites.."),
            actions: [
              TextButton(
                  onPressed: (){
                    print("Annuler");
                    Navigator.pop(contextDialog);
                  },
                  child: Text("Annuler", style: TextStyle(color: Colors.red),)
              ),
              TextButton(
                  onPressed: (){
                    print("Appel API");
                    Navigator.pop(contextDialog);
                  },
                  child: Text("Confirmer", style: TextStyle(color: Colors.blue),)
              ),
            ],
          ) ;
        }
    );
  }

}
