import 'package:contact_app/utils/class.dart';
import 'package:flutter/material.dart';

class NewContacts extends StatefulWidget {
  const NewContacts({super.key});

  @override
  State<NewContacts> createState() => _NewContactsState();
}

class _NewContactsState extends State<NewContacts> {
  late final TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Contact'),
      ),
      body: Column(children: [
        TextField(
          controller: controller,
          decoration: const InputDecoration(hintText: 'enter new contact'),
        ),
        TextButton(
            onPressed: () {
              final contact = Contact(name: controller.text);
              ContactBook().add(contact: contact);
              Navigator.of(context).pop();
            },
            child: const Text('add')),
      ]),
    );
  }
}
