import 'package:flutter/material.dart';
import 'package:twitter/tweet/tweet-page.dart';
import 'auth/auth-page.dart';

void main() {
  runApp(const TwitterApp());
}

class TwitterApp extends StatelessWidget {
  const TwitterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Twitter',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent)
        ),
        routes:{
          "/": (context) => LoginPage(),
          "/tweet": (context) => TweetPage(),
        },
        initialRoute: "/",
    );
  }
}
