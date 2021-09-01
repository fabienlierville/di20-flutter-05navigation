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
          onPressed: null,
          child: Text("Show AlertDialog"),
        ),
      ),
    );
  }
}
