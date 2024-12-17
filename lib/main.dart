import 'package:flutter/material.dart';
import 'package:twitter/content-body.dart';
import 'package:twitter/footer.dart';
import 'package:twitter/header.dart';

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
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent.shade400,
            title: Center(
                child: Text('Twitter',
                    style: TextStyle(fontSize: 24, color: Colors.white))),
          ),
          body: Column(
            children: [
              Header(),
              Expanded(child: ContentBody()),
              Footer(),
            ],
          ),
        )
    );
  }
}
