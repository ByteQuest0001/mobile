// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'package:http/http.dart' as http;

class UserService {
  static const String endpoint = 'http://localhost:8081/user';

  static Future<http.Response> signup({
    required String name,
    required String username,
    required String email,
    required String password,
  }) async {
    final url = Uri.parse(endpoint);
    final headers = {'Content-Type': 'application/json'};
    final body = json.encode({
      'name': name,
      'username': username,
      'email': email,
      'password': password,
    });

    return await http.post(url, headers: headers, body: body);
  }
}
