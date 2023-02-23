import 'package:flutter/material.dart';
import 'package:message_app/components/app_bar.dart';
import 'package:message_app/components/contacts_builder.dart';

import '../components/messages_builder.dart';
import '../models/message.dart';
import '../models/user.dart';

class HomePage extends StatefulWidget {
  final List<User> contactsList;
  const HomePage({
    super.key,
    required this.contactsList,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[400],
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          ContactsBuilder(
            listOfContacts: widget.contactsList,
          ),
          Expanded(
            child: MessagesBuilder(
              listOfContacts: widget.contactsList,
            ),
          ),
        ],
      ),
    );
  }
}
