import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddEmergencyPage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final CollectionReference _collection =
  FirebaseFirestore.instance.collection('emergency_contacts');

  final TextEditingController nameController = TextEditingController();
  final TextEditingController relationController = TextEditingController();
  final TextEditingController contactNoController = TextEditingController();
  final TextEditingController otherNoController = TextEditingController();

  Future<void> _addEmergencyContact() async {
    try {
      String userId = _auth.currentUser?.uid ?? ''; // Get the current user ID
      String name = nameController.text.trim();
      String relation = relationController.text.trim();
      String contactNo = contactNoController.text.trim();
      String otherNo = otherNoController.text.trim();

      if (userId.isNotEmpty && name.isNotEmpty) {
        // Add a new document with a generated ID
        await _collection.add({
          'userId': userId,
          'name': name,
          'relation': relation,
          'contactNo': contactNo,
          'otherNo': otherNo,
        });

        print('Emergency contact added successfully!');
      } else {
        print('User ID or Name is empty.');
      }
    } catch (e) {
      print('Error adding emergency contact: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Emergency Number'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "ADD the contact",
                style: TextStyle(fontSize: 25, color: Colors.blue),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(28, 10, 28, 10),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(labelText: 'Name'),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(28, 10, 28, 10),
                child: const TextField(
                 // controller: relationController,
                  decoration: InputDecoration(labelText: 'Relation'),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(28, 10, 28, 10),
                child: const TextField(
                  //controller: contactNoController,
                  decoration: InputDecoration(labelText: 'Contact NO'),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(28, 10, 28, 10),
                child: const TextField(
                 // controller: otherNoController,
                  decoration: InputDecoration(labelText: 'Other No'),
                ),
              ),
              const SizedBox(height: 4),
              ElevatedButton(
                onPressed: () {
                  _addEmergencyContact();
                },
                child: const Text('Add Contact'),
              ),
              SizedBox(height: 10),
              const Text("already have account"),
            ],
          ),
        ),
      ),
    );
  }
}
