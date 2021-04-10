import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: kDefaultPadding / 2),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        border: Border(
          bottom: BorderSide(color: Colors.white),
        ),
      ),
      child: Container(
        color: Colors.white,
        width: double.infinity,
        height: 40,
        margin: EdgeInsets.only(left: kDefaultPadding / 2, right: kDefaultPadding / 2),
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
