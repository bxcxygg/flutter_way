import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../theme.dart';
import '../../components/avatar.dart';

class ChatItem extends StatelessWidget {
  final String avatar;
  final String name;
  final String latestDate;
  final String latestRecord;
  final bool shield;
  final bool top;
  const ChatItem({
    Key key,
    @required this.avatar,
    @required this.name,
    @required this.latestDate,
    @required this.latestRecord,
    this.shield = false,
    this.top = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      color: top ? kSecondColor : Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Avatar(image: avatar),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.only(bottom: kDefaultPadding / 2, right: kDefaultPadding, top: kDefaultPadding / 2),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey[200]),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text(name, style: Theme.of(context).textTheme.subtitle2),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(latestDate, style: TextStyle(color: Colors.grey[400])),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text.rich(
                          TextSpan(
                            text: latestRecord,
                            style: TextStyle(color: Colors.grey[400]),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (shield)
                        Expanded(
                          child: SvgPicture.asset("assets/icons/shield.svg", height: 20),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
