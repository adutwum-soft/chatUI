import 'package:chat/src/model/message.dart';
import 'package:chat/src/model/user.dart';
import 'package:chat/src/ui/chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FavoriteContacts extends StatelessWidget {
  const FavoriteContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                const Text(
                  'Favorite Contacts',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz,
                    size: 30,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 120,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              itemCount: favorite.length,
              itemBuilder: (BuildContext ctx, int index) {
                return GestureDetector(
                  onTap: () => routeToChat(context, favorite[index]),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage(favorite[index].imageUrl!),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          favorite[index].name!,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  routeToChat(BuildContext context, User user) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return Chat(user: user);
        },
      ),
    );
  }
}
