import 'package:flutter/material.dart';
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
      home: SplashScreen(
        seconds: 4,
        navigateAfterSeconds: LoginPages(),
        image: Image.asset('assets/images/insta_logo2.png'),
        loadingText: Text('Copyright \u00a9 2020 FikryAS'),
        backgroundColor: Colors.white,
      ),
    );
  }
}
