import 'package:message_app/models/message.dart';

class User {
  final int id;
  final String name;
  final String imageUrl;
  final List<Message> messages;
  bool isOnline = false;
  bool isFavorite = false;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.messages,
    isOnline,
    isFavorite,
  });
}
