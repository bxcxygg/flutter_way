import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme.dart';

class Header extends StatelessWidget {
  final String title;

  const Header({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      width: double.infinity,
      height: 50,
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(title, style: Theme.of(context).textTheme.headline6),
          Positioned(
            right: kDefaultPadding,
            child: SvgPicture.asset("assets/icons/add.svg"),
          ),
        ],
      ),
    );
  }
}
