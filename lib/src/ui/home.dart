import 'package:chat/src/res/styles.dart';
import 'package:chat/src/widget/category_selector.dart';
import 'package:chat/src/widget/favorite_contacts.dart';
import 'package:chat/src/widget/recent_chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            size: 30.0,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Chat",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 30.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          const CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: AppStyles.topCurve,
              ),
              child: Column(
                children: <Widget>[
                  const FavoriteContacts(),
                  RecentChat(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
