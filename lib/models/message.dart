class Message {
  final String text;
  final String time;
  final bool isMyMessage;
  bool isUnread = true;
  bool isLiked = false;

  Message({
    required this.text,
    required this.time,
    required this.isMyMessage,
    isUnread,
    isLiked,
  });
}
