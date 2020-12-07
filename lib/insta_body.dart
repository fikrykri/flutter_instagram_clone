import 'package:flutter/material.dart';
import 'package:flutter_clone_instagram_inisiated/insta_list.dart';

class InstaBody extends StatelessWidget {
  final String username;

  InstaBody({Key key, @required this.username});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
            child: InstaList(
          username: username,
        ))
      ],
    );
  }
}
