import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() => runApp(MyApp()); // MyAppはルートウィジェット

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // StatelessWidgetはBuild()メソッドの実装が必須
    return MaterialApp(
      // MaterialAppはMyAppをコンポジット
      debugShowCheckedModeBanner: false,
      title: "ホーム画面",
      home: HomeScreen(),
    );
  }
}
/*
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ホーム画面"),
        centerTitle: true,
      ),
      body: Center(
        home: HomeScreen(),
        child: RaisedButton(
          child: Text("次の画面に遷移します"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NextScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}

// next screen
class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("次の画面"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("次の画面にきました！"),
      ),
    );
  }
}
*/
