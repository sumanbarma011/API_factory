// import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
import 'package:prac1/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.


  @override
  
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: UserUi()
    );
  }
}

