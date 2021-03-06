import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:com_ricks_machine/models/global_variables.dart';
import 'package:com_ricks_machine/models/user_modelo.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/foundation.dart';

class AuthService {
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;
  User? _userFromFirebase(auth.User? user) {
    if(user == null) {
      return null;
    }

    return User(uid: user.uid,email: user.email);

  }

  Stream<User?>? get user{
    return _firebaseAuth.authStateChanges().map(_userFromFirebase);
  }

  Future<User?> signInWithEmailAndPassword(
      String email,
      String password,
      ) async{
    final credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password
    );
    return _userFromFirebase(credential.user);
  }

  Future<User?> createWithEmailAndPassword(
      String email,
      String password,
      )async{
    final credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password
    );
    return _userFromFirebase(credential.user);
  }

  Future<void> signOut()async{
    return await _firebaseAuth.signOut();
  }
}