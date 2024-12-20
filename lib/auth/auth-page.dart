
import 'package:flutter/material.dart';
import 'package:twitter/auth/auth-form.dart';
import 'package:twitter/common/tweet-app-bar.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TweetAppBar(title: "connexion"),
      body: AuthForm(),
    );
  }
}