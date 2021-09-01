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
        builder: (BuildContext contextDialog){
          return AlertDialog(
            title: Text("Voulez vous supprimer ... ?"),
            content: Text("Attention à ce que vous faites.."),
            actions: [
              TextButton(
                  onPressed: null,
                  child: Text("Annuler", style: TextStyle(color: Colors.red),)
              ),
              TextButton(
                  onPressed: null,
                  child: Text("Confirmer", style: TextStyle(color: Colors.blue),)
              ),
            ],
          ) ;
        }
    );
  }

}
