import 'package:chat/src/model/message.dart';
import 'package:chat/src/model/user.dart';
import 'package:chat/src/res/colors.dart';
import 'package:chat/src/res/styles.dart';
import 'package:chat/src/ui/chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RecentChat extends StatelessWidget {
  RecentChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: AppStyles.topCurve,
        ),
        child: ClipRRect(
          borderRadius: AppStyles.topCurve,
          child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext ctx, int index) {
              final chat = chats[index];
              return GestureDetector(
                onTap: () => routeToChat(context, chat.sender!),
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                    right: 20,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: rightCurve,
                    color: chat.unread! ? AppColors.unread : Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(chat.sender!.imageUrl!),
                            radius: 35,
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                chat.sender!.name!,
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: Text(
                                  chat.text!,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            chat.time!,
                            style: textStyle(),
                          ),
                          const SizedBox(height: 10),
                          chat.unread!
                              ? Container(
                                  width: 40,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'New',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              : const Text(''),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  TextStyle textStyle({Color? color = Colors.grey, double? fontSize = 15}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
    );
  }

  BorderRadius rightCurve = const BorderRadius.only(
    topRight: Radius.circular(20),
    bottomRight: Radius.circular(20),
  );

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
