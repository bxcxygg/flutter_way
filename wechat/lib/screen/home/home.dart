import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme.dart';
import '../components/bottom.dart';
import '../components/header.dart';

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
            Header(title: "wechat"),
            Container(
              height: MediaQuery.of(context).size.height - 180,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SearchBar(),
                  ],
                ),
              ),
            ),
            Bottom(),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      padding: EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Container(
        color: Colors.white,
        width: double.infinity,
        height: 40,
        margin: EdgeInsets.only(top: kDefaultPadding, left: kDefaultPadding / 2, right: kDefaultPadding / 2),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset("assets/icons/search.svg"),
              SizedBox(width: kDefaultPadding / 2),
              Text("搜索", style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}
