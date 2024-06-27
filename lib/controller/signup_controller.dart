// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:bytequest/services/user_service.dart';
import 'package:bytequest/screen/login_screen.dart';

class SignupController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  Future<void> signup(BuildContext context) async {
    try {
      final response = await UserService.signup(
        name: nameController.text,
        username: usernameController.text,
        email: emailController.text,
        password: passwordController.text,
      );

      if (response.statusCode == 200) {
        // successful signup
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      } else {
        // error
        log('Signup failed: ${response.body}');
      }
    } catch (e) {
      log('Error: $e');
    }
  }
}
