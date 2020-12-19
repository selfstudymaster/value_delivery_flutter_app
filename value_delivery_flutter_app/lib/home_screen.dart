import 'package:flutter/material.dart';
import 'next_screen.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController inputText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: inputText,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            RaisedButton(
              child: Text("次の画面へ"),
              onPressed: () => _nextScreen(context),
            ),
          ],
        ),
      ),
    );
  }

  // 画面遷移
  _nextScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NextScreen(inputText: inputText.text,
        ),
      ),
    );
  }
}