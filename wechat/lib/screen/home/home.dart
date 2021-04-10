import 'package:flutter/material.dart';

import '../../theme.dart';
import '../components/bottom.dart';
import '../components/header.dart';
import 'components/chat_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kPrimaryColor,
        padding: EdgeInsets.only(top: kDefaultPadding * 2),
        child: Column(
          children: [
            Header(title: "微信"),
            ChatList(),
            Bottom(),
          ],
        ),
      ),
    );
  }
}
