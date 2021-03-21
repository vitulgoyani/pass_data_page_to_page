import 'package:flutter/material.dart';

import 'SecondPage.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TextEditingController nameCtr = TextEditingController();

  cameFromSecondScreen(String name) {
    setState(() {
      nameCtr.text = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Container(
        child: Column(
          children: [
            TextFormField(
              controller: nameCtr,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SecondPage(
                    nameFromFirstScreen: nameCtr.text,
                    sendToFirstScreen: cameFromSecondScreen,
                  );
                }));
              },
              child: Text("Go to Second Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
