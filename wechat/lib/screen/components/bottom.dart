import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme.dart';

class Bottom extends StatelessWidget {
  const Bottom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.only(bottom: kDefaultPadding, top: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MenuItem(title: "聊天", image: "assets/icons/chat.svg", activeImage: "assets/icons/chat-fill.svg", isActive: true),
          MenuItem(title: "通讯录", image: "assets/icons/book.svg", activeImage: "assets/icons/book-fill.svg", isActive: false),
          MenuItem(title: "发现", image: "assets/icons/find.svg", activeImage: "assets/icons/find-fill.svg", isActive: false),
          MenuItem(title: "我", image: "assets/icons/me.svg", activeImage: "assets/icons/me-fill.svg", isActive: false),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final String image;
  final String activeImage;
  final bool isActive;

  const MenuItem({
    Key key,
    @required this.title,
    @required this.image,
    @required this.activeImage,
    @required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(isActive ? activeImage : image, height: 30, width: 30),
        Text(title, style: TextStyle(color: isActive ? kActiveColor : Colors.black)),
      ],
    );
  }
}
