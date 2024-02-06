import 'package:contact_app/pages/home_page.dart';
import 'package:contact_app/pages/new_contacts.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>const MyHomePage(),
        '/new-contacts':(context)=>const NewContacts()
      },
    );
  }
}

