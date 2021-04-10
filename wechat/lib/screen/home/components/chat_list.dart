import 'package:flutter/material.dart';

import '../../../theme.dart';
import '../../components/search_bar.dart';
import 'chat_item.dart';

class ChatList extends StatelessWidget {
  const ChatList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 200,
      color: kPrimaryColor,
      child: ListView(
        children: [
          SearchBar(),
          ChatItem(
            avatar: "https://avatars.githubusercontent.com/u/24350023?s=400&u=0326b212c14f6b5bdac4db6c415db56fe09162a8&v=4",
            name: "十里鹿鸣呦",
            latestDate: "星期三",
            latestRecord: "你好，这是我的微信，以后也可以通过这个微信联系我",
            top: true,
          ),
          ChatItem(
            avatar: "https://avatars.githubusercontent.com/u/24350023?s=400&u=0326b212c14f6b5bdac4db6c415db56fe09162a8&v=4",
            name: "十里鹿鸣呦",
            latestDate: "星期三",
            latestRecord: "你好，这是我的微信，以后也可以通过这个微信联系我",
            shield: true,
          ),
          ChatItem(
            avatar: "https://avatars.githubusercontent.com/u/24350023?s=400&u=0326b212c14f6b5bdac4db6c415db56fe09162a8&v=4",
            name: "十里鹿鸣呦",
            latestDate: "星期三",
            latestRecord: "你好，这是我的微信，以后也可以通过这个微信联系我",
          ),
          ChatItem(
            avatar: "https://avatars.githubusercontent.com/u/24350023?s=400&u=0326b212c14f6b5bdac4db6c415db56fe09162a8&v=4",
            name: "十里鹿鸣呦",
            latestDate: "星期三",
            latestRecord: "你好，这是我的微信，以后也可以通过这个微信联系我",
          ),
          ChatItem(
            avatar: "https://avatars.githubusercontent.com/u/24350023?s=400&u=0326b212c14f6b5bdac4db6c415db56fe09162a8&v=4",
            name: "十里鹿鸣呦",
            latestDate: "星期三",
            latestRecord: "你好，这是我的微信，以后也可以通过这个微信联系我",
          ),
          ChatItem(
            avatar: "https://avatars.githubusercontent.com/u/24350023?s=400&u=0326b212c14f6b5bdac4db6c415db56fe09162a8&v=4",
            name: "十里鹿鸣呦",
            latestDate: "星期三",
            latestRecord: "你好，这是我的微信，以后也可以通过这个微信联系我",
          ),
          ChatItem(
            avatar: "https://avatars.githubusercontent.com/u/24350023?s=400&u=0326b212c14f6b5bdac4db6c415db56fe09162a8&v=4",
            name: "十里鹿鸣呦",
            latestDate: "星期三",
            latestRecord: "你好，这是我的微信，以后也可以通过这个微信联系我",
          ),
          ChatItem(
            avatar: "https://avatars.githubusercontent.com/u/24350023?s=400&u=0326b212c14f6b5bdac4db6c415db56fe09162a8&v=4",
            name: "十里鹿鸣呦",
            latestDate: "星期三",
            latestRecord: "你好，这是我的微信，以后也可以通过这个微信联系我",
          ),
          ChatItem(
            avatar: "https://avatars.githubusercontent.com/u/24350023?s=400&u=0326b212c14f6b5bdac4db6c415db56fe09162a8&v=4",
            name: "十里鹿鸣呦",
            latestDate: "星期三",
            latestRecord: "你好，这是我的微信，以后也可以通过这个微信联系我",
          ),
        ],
      ),
    );
  }
}
