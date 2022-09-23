import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:app_transparencia/ui/home.dart';

void main() async {
  runApp(const MaterialApp(
    title: "Portal da transparência",
    home: MyHomePage(),
  ));

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  FirebaseFirestore.instance.collection('teste').add({'teste': 'xcddf'});
}
