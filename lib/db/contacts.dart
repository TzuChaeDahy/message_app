import 'package:message_app/db/messages.dart';
import 'package:message_app/models/user.dart';

final User currentUser = User(
  id: 1000,
  name: "Wenny",
  imageUrl: "assets/images/topanga.jpg",
  messages: [],
);

List<User> contacts = [
  // User(
  //   id: 0,
  //   name: "Cory",
  //   imageUrl: "assets/images/cory.jpg",
  //   messages: allMessages[0],
  // ),
  // User(
  //   id: 1,
  //   name: "Shawn",
  //   imageUrl: "assets/images/shawn.webp",
  //   messages: allMessages[1],
  // ),
  // User(
  //   id: 2,
  //   name: "Topanga",
  //   imageUrl: "assets/images/topanga.jpg",
  //   messages: allMessages[2],
  // ),
];
