import 'package:flutter/material.dart';
import 'package:flutter_contacts/model/contact.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);
  List<ListTile> showContacts() {
    List<Contact> contacts = buildContacts();
    for (int i = 0; i < 20; i++) {
      contacts.addAll(buildContacts());
    }
    List<ListTile> list = [];
    contacts.forEach((contact) {
      list.add(ListTile(
        title: Text(contact.name),
        subtitle: Text(contact.subtitle),
        leading: CircleAvatar(
            child: Icon(contact.icon), backgroundColor: Colors.amber[600]),
        onTap: () => true,
      ));
    });
    return list;
  }

  List<Contact> buildContacts() {
    List<Contact> contacts = [];
    contacts
        .add(Contact('Thomas Anderson', 'The Matrix', Icons.sentiment_neutral));
    contacts.add(
        Contact('Frank Slade', 'Scent of a woman', Icons.sentiment_satisfied));
    contacts.add(Contact(
        'Mildred Hayes',
        'Three Billboards Outside Ebbing, Missouri',
        Icons.sentiment_dissatisfied));
    contacts.add(
        Contact('Bruce Wayne', 'The Dark Knight', Icons.sentiment_neutral));
    contacts.add(
        Contact('Jamal Malik', 'The Millionaire', Icons.sentiment_satisfied));
    return contacts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('List View')),
        body: Container(child: ListView(children: showContacts())));
  }
}
