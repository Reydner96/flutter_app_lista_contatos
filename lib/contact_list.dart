import 'package:flutter/material.dart';

import './model/contatc_model.dart';

class ContactListPage extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(
        name: 'Fake Name 1',
        email: 'fake1@example.com',
        phoneNumber: '123456789',
        photoPath: ''),
    Contact(
        name: 'Fake Name 2',
        email: 'fake2@example.com',
        phoneNumber: '123456789',
        photoPath: ''),
    Contact(
        name: 'Fake Name 3',
        email: 'fake3@example.com',
        phoneNumber: '123456789',
        photoPath: ''),
    Contact(
        name: 'Fake Name 4',
        email: 'fake4@example.com',
        phoneNumber: '123456789',
        photoPath: ''),
    Contact(
        name: 'Fake Name 5',
        email: 'fake5@example.com',
        phoneNumber: '123456789',
        photoPath: ''),
  ];

  ContactListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Contatos'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return ListTile(
            title: Text(contact.name),
            subtitle: Text(contact.email),
            trailing: IconButton(
              icon: const Icon(Icons.info),
              onPressed: () {
                //Navegar para pagina de detalhes do contato
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          //Navegar para pagina de cadastro
        },
      ),
    );
  }
}
