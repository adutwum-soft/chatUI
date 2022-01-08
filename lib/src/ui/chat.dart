import 'package:chat/src/model/message.dart';
import 'package:chat/src/model/user.dart';
import 'package:chat/src/res/colors.dart';
import 'package:chat/src/res/styles.dart';
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
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        title: Text(
          widget.user.name!,
          style: AppStyles.appTitleStyle,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              size: 30.0,
              color: Colors.white,
            ),
          ),
        ],
        elevation: 0.0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: AppStyles.topCurve,
                ),
                child: ClipRRect(
                  borderRadius: AppStyles.topCurve,
                  child: ListView.builder(
                    reverse: true,
                    padding: const EdgeInsets.only(top: 15),
                    itemCount: messages.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      final message = messages[index];
                      bool isMe = message.sender!.id! == currentUser.id;
                      return _buildMessage(message, isMe);
                    },
                  ),
                ),
              ),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }

  _buildMessageComposer() {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.photo),
            onPressed: () {},
            iconSize: 25,
            color: Theme.of(context).colorScheme.primary,
          ),
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {},
              decoration: const InputDecoration.collapsed(
                hintText: 'Send a message...',
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {},
            iconSize: 25,
            color: Theme.of(context).colorScheme.primary,
          )
        ],
      ),
    );
  }

  _buildMessage(Message message, bool isMe) {
    final Container mesg = Container(
      margin: isMe
          ? const EdgeInsets.only(
              top: 8,
              bottom: 8,
              left: 80,
            )
          : const EdgeInsets.only(
              top: 8,
              bottom: 8,
            ),
      width: MediaQuery.of(context).size.width * 0.75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message.time!,
            style: AppStyles.style16,
          ),
          const SizedBox(height: 8),
          Text(
            message.text!,
            style: AppStyles.style16,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color:
            isMe ? Theme.of(context).colorScheme.secondary : AppColors.unread,
        borderRadius: isMe
            ? const BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              )
            : const BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
      ),
    );
    if (isMe) {
      return mesg;
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        mesg,
        IconButton(
          onPressed: () {},
          icon: message.isLiked!
              ? const Icon(Icons.favorite)
              : const Icon(Icons.favorite_border),
          iconSize: 30.0,
          color: message.isLiked!
              ? Theme.of(context).colorScheme.primary
              : Colors.blueGrey,
        )
      ],
    );
  }
}
