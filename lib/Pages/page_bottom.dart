import 'package:flutter/material.dart';

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
                onPressed: null,
                child: Text("Show Bottom"),
              ),
            ],
          )
      ),
    );
  }
}
