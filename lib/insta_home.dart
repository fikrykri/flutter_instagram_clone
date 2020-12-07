import 'package:flutter/material.dart';
import 'package:flutter_clone_instagram_inisiated/insta_body.dart';

class InstaHome extends StatelessWidget {
  final String username;

  InstaHome({Key key, @required this.username});

  final topBar = AppBar(
    backgroundColor: Color(0xfff8faf8),
    elevation: 1,
    title: SizedBox(
      height: 35,
      child: Image.asset("assets/images/insta_logo.png"),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Icon(Icons.send),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: InstaBody(
        username: username,
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50,
        alignment: Alignment.center,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(icon: Icon(Icons.home), onPressed: () {}),
              IconButton(icon: Icon(Icons.search), onPressed: null),
              IconButton(icon: Icon(Icons.add_box), onPressed: null),
              IconButton(icon: Icon(Icons.favorite), onPressed: null),
              IconButton(icon: Icon(Icons.person), onPressed: null)
            ],
          ),
        ),
      ),
    );
  }
}
