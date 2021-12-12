
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

CollectionReference users = FirebaseFirestore.instance.collection("users");
final FirebaseAuth auth = FirebaseAuth.instance;

String light_image = 'assets/light_on_button.png';
String volume_image = 'assets/volume_on_button.png';


late int tokens;

Future<int> getTokens() async {
  return await users.doc(auth.currentUser!.email.toString()).get().then((value) {
    var map = value.data() as Map<String, dynamic>;
    return map['tokens'];
  });

}