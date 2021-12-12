import 'package:flutter/foundation.dart';

class User extends ChangeNotifier{
  final String uid;
  final String? email;

  User({required this.uid,required this.email,});

}