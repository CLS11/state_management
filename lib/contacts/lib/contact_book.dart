import 'package:contacts/contact.dart';
import 'package:flutter/material.dart';

class ContactBook extends ValueNotifier<List<Contact>> {
  factory ContactBook() => _shared;
  ContactBook._sharedInstance()
      : super([]); //Private constructor implementing singleton pattern
  static final ContactBook _shared = ContactBook._sharedInstance();

  final List<Contact> _contacts = [];

  int get length => value.length;

  //Adding the contact in the book
  void add({required Contact contact}) {
    final contacts = value;
    contacts.add(contact);
    notifyListeners();
  }

  //Removing the contact
  void remove({required Contact contact}) {
    final contacts = value;
    if (contacts.contains(contact)) {
      contacts.remove(contact);
      notifyListeners();
    }
  }

  //Checking the length and index
  Contact? contact({required int atIndex}) =>
      value.length > atIndex ? value[atIndex] : null;
}
