// ignore: implementation_imports
import 'dart:convert';

// ignore: implementation_imports
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:flutter_app/screens/home_screen.dart';

List<UserModel> userModelFromJson(String str) =>
    List<UserModel>.from(json.decode(str).map((x) => UserModel.fromMap(x)));

String userModelToJson(List<UserModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class UserModel {
  String? uid;
  String? email;
  String? firstName;
  String? secondName;
  String? dob;

  UserModel(
      {this.uid,
      this.email,
      this.firstName,
      this.secondName,
      this.dob});

  //receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
        uid: map['uid'],
        email: map['email'],
        firstName: map['firstName'],
        secondName: map['secondName'],
        dob: map['dob']);
  }

  //sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'secondName': secondName,
      'dob': dob,
    };
  }
}
