import 'package:flutter/widgets.dart';
import 'package:uuid/uuid.dart';

class Contact {
  final String id;
  final String name;
   Contact({required this.name}
      ): id= const Uuid().v4();
}

class ContactBook  extends ValueNotifier<List<Contact>>{
  ContactBook._():super([]);

  static final ContactBook _instance = ContactBook._();

  factory ContactBook() {
    return _instance;
  }

  final List<Contact> contacts = [];

  int get length => value.length;

  void add({required Contact contact}) {
    final contacts=value;
    contacts.add(contact);
    value= contacts;
    notifyListeners();
  }

  void remove({required Contact contact}) {
    final contacts=value;
    if(contacts.contains(contact)){
    contacts.remove(contact);
    notifyListeners();
    }

  }

  Contact? contact({required int atIndex}) {
    return contacts.length > atIndex ? contacts[atIndex] : null;
  }
}
