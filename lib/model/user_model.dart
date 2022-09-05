// ignore: implementation_imports
import 'dart:convert';

// ignore: implementation_imports
import 'package:flutter/src/widgets/editable_text.dart';

List<UserModel> userModelFromJson(String str) =>
    List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson)));

class UserModel {
  String? uid;
  String? email;
  String? firstName;
  String? secondName;
  String? dateOfBirth;

  TextEditingController dob;

  UserModel(
      {this.uid,
      this.email,
      this.firstName,
      this.secondName,
      required this.dob});

  //data from server
  factory UserModel.fromJson(map) {
    return UserModel(
        uid: map['uid'],
        email: map['email'],
        firstName: map['firstName'],
        secondName: map['secondName'],
        dob: map['dateOfBirth']);
  }

  //sending data to our server
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'secondName': secondName,
      'dob': dateOfBirth,
    };
  }
}
