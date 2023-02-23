import 'package:flutter/material.dart';
import 'package:message_app/db/contacts.dart';

import '../models/user.dart';

class MessagesBuilder extends StatelessWidget {
  final List<User> listOfContacts;
  const MessagesBuilder({
    super.key,
    required this.listOfContacts,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(35),
        topRight: Radius.circular(35),
      ),
      child: Container(
        color: Colors.grey[100],
        child: listOfContacts.isEmpty
            ? Center(
                child: Text("Add imagem pedindo pra fazer novos contatos"),
              )
            : ListView.builder(
                itemCount: listOfContacts.length,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 10),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage(contacts[index].imageUrl),
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    listOfContacts[index].name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    listOfContacts[index].messages.last.text,
                                    style: TextStyle(
                                        color: contacts[index]
                                                    .messages
                                                    .last
                                                    .isUnread &&
                                                !contacts[index]
                                                    .messages
                                                    .last
                                                    .isMyMessage
                                            ? Colors.pink
                                            : Colors.grey,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                listOfContacts[index].messages.last.time,
                                style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              listOfContacts[index].messages.last.isUnread &&
                                      !listOfContacts[index]
                                          .messages
                                          .last
                                          .isMyMessage
                                  ? Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 2),
                                      decoration: BoxDecoration(
                                          color: Theme.of(context).primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                      child: const Text(
                                        "New",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  : const Text(""),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
      ),
    );
  }
}
