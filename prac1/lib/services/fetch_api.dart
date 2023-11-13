import 'package:http/http.dart' as http;

import 'dart:convert';

import '../model/user_model.dart';

class FetchData {
  static Future<List<UserModel>> press() async {
    print('Api called');

    const url = 'https://randomuser.me/api/?results=20';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final json = jsonDecode(response.body);
    final result = json['results'] as List;

    final transform = result.map((e) {
      return UserModel.fromMap(e);
    }).toList();
    // print(result);
    return transform;

    // print('Api called teriminates');
  }
}
