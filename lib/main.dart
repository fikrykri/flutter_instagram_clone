import 'package:flutter/material.dart';
import 'package:flutter_clone_instagram_inisiated/insta_home.dart';
import 'package:flutter_clone_instagram_inisiated/login_page.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(
              // ignore: deprecated_member_use
              title: TextStyle(color: Colors.black, fontFamily: "Aveny")),
          // ignore: deprecated_member_use
          textTheme: TextTheme(title: TextStyle(color: Colors.black)),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Center(
        child: SplashScreen(
          seconds: 3,
          navigateAfterSeconds: InstaHome(),
          image: Image.asset('assets/images/insta_logo.png'),
          photoSize: 100.0,
          loadingText: Text('Copyright \u00a9 2020 FikryAS'),
          loaderColor: Colors.transparent,
          backgroundColor: Colors.grey[100],
        ),
      ),
    );
  }
}
