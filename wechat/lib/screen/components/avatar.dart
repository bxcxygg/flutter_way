import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String image;

  const Avatar({
    Key key,
    @required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(image),
        ),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
