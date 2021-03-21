import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();

  final String nameFromFirstScreen;
  ValueChanged<String> sendToFirstScreen;

  SecondPage({this.nameFromFirstScreen,this.sendToFirstScreen});
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController nameCtr = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      nameCtr.text = widget.nameFromFirstScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Container(
        child: Column(
          children: [
            TextFormField(
              controller: nameCtr,
            ),
            RaisedButton(
              onPressed: () {
                widget.sendToFirstScreen(nameCtr.text);
                Navigator.pop(context);
              },
              child: Text("Go to First Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
