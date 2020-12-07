import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Stories",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(
        children: [
          Icon(Icons.play_arrow),
          Text(
            "Watch All",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      )
    ],
  );

  final stories = Expanded(
    child: Padding(
      padding: const EdgeInsets.all(0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) => Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/Iam.jpg'),
                  )),
              margin: EdgeInsets.symmetric(horizontal: 8),
            ),
            index == 0
                ? Positioned(
                    right: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      radius: 10,
                      child: Icon(
                        Icons.add,
                        size: 14,
                        color: Colors.white,
                      ),
                    ),
                  )
                : Container()
          ],
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          topText,
          stories,
        ],
      ),
    );
  }
}
