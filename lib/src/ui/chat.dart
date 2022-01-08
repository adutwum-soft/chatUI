import 'package:chat/src/model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Chat extends StatefulWidget {
  final User user;
  const Chat({Key? key, required this.user}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
