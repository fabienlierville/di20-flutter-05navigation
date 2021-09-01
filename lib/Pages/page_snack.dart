import 'package:flutter/material.dart';

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
