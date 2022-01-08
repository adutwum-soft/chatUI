import 'package:chat/src/model/user.dart';

class Message {
  final User? sender;
  final String? time;
  final String? text;
  final bool? isLiked;
  final bool? unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/greg.jpg',
);

final User greg = User(
  id: 0,
  name: 'Greg',
  imageUrl: 'assets/images/greg.jpg',
);

final User james = User(
  id: 1,
  name: 'James',
  imageUrl: 'assets/images/james.jpg',
);

final User john = User(
  id: 2,
  name: 'John',
  imageUrl: 'assets/images/john.jpg',
);

final User oliver = User(
  id: 3,
  name: 'Current User',
  imageUrl: 'assets/images/oliver.jpg',
);

final User sam = User(
  id: 4,
  name: 'Sam',
  imageUrl: 'assets/images/sam.jpg',
);

final User steven = User(
  id: 5,
  name: 'Steven',
  imageUrl: 'assets/images/steven.jpg',
);

final User sophia = User(
  id: 6,
  name: 'Sophia',
  imageUrl: 'assets/images/sophia.jpg',
);

List<User> favorite = [sam, steven, oliver, sophia, john, james, greg];

List<Message> chats = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? what did you eat today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: oliver,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? what did you eat today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: john,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? what did you eat today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sophia,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? what did you eat today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: steven,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? what did you eat today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sam,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? what did you eat today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: greg,
    time: '11:30 PM',
    text: 'Hey, how\'s it going? what did you eat today?',
    isLiked: false,
    unread: false,
  ),
];
