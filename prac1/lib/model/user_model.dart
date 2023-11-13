// import 'package:flutter/material.dart';
import 'package:prac1/model/user_dob.dart';
import 'package:prac1/model/user_location.dart';
import 'package:prac1/model/user_name.dart';
import 'package:prac1/model/user_picture.dart';

class UserModel {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  final UserDob dob;
  final UserLocation location;
  final UserPicture userPicture;

  const UserModel(
      {required this.gender,
      required this.email,
      required this.phone,
      required this.cell,
      required this.nat,
      required this.name,
      required this.dob,
      required this.location,
      required this.userPicture});
  factory UserModel.fromMap(Map<String, dynamic> e) {
    final name = UserName.fromMap(e['name']);
    final dob = UserDob.fromMap(e['dob']);
    final location = UserLocation.fromMap(e['location']);
    final userPicture = UserPicture.fromMap(e['picture']);
    return UserModel(
        gender: e['gender'],
        email: e['email'],
        phone: e['phone'],
        cell: e['cell'],
        nat: e['nat'],
        name: name,
        dob: dob,
        location: location,
        userPicture: userPicture);
  }
}
