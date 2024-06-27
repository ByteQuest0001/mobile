// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:bytequest/screen/home_screen.dart';
import 'package:bytequest/services/user_service.dart';
import 'package:flutter/material.dart';

class LoginController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> login(BuildContext context) async {
    try {
      final response = await UserService.login(
        username: usernameController.text,
        password: passwordController.text,
      );

      if (response.statusCode == 200) {
        // successful login
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      } else {
        // error
        log('Login failed: ${response.body}');
      }
    } catch (e) {
      log('Error: $e');
    }
  }
}
