import 'package:flutter/material.dart';
import 'package:message_app/db/contacts.dart';
import 'package:message_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Message App",
      home: HomePage(
        contactsList: contacts,
      ),
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }
}
