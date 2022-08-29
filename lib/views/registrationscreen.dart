// ignore_for_file: non_constant_identifier_names
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_demo/homepage.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController _first_nameController = TextEditingController();
  final TextEditingController _last_nameController = TextEditingController();
  final TextEditingController _phone_noController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _occupationController = TextEditingController();
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  Future<void> addUser() {
    return users.add({
      'first_name': _first_nameController.text,
      'last_name': _last_nameController.text,
      'age': _ageController.text,
      'occupation': _occupationController.text,
      'phone_no': _phone_noController.text,
      'address': _addressController.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Registration",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _first_nameController,
                decoration: InputDecoration(
                    hintText: "First Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _last_nameController,
                decoration: InputDecoration(
                    hintText: "Last Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _ageController,
                decoration: InputDecoration(
                    hintText: "Age",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _occupationController,
                decoration: InputDecoration(
                    hintText: "Occupation",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _phone_noController,
                decoration: InputDecoration(
                    hintText: "Phone No.",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _addressController,
                decoration: InputDecoration(
                    hintText: "Address",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16))),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    addUser();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ));
                  },
                  child: const Text("Registration")),
            ],
          ),
        ),
      ),
    );
  }
}
