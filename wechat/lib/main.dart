import 'package:flutter/material.dart';

import 'screen/home/home.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wechat',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        textTheme: TextTheme(),
      ),
      home: HomeScreen(),
    );
  }
}
