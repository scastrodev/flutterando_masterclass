import 'package:flutter/material.dart';
import 'package:money_app_screen/logo_widget.dart';

import 'constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 150, height: 200, child: LogoWidget()),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 350),
                child: const Text(
                  'Get your Money Under Control',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 20),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 350),
                child: Text(
                  'Manage your expenses Seamlessly',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, color: Colors.grey[500]),
                ),
              ),
              const SizedBox(height: 80),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: primary,
                  fixedSize: const Size(350, 50),
                ),
                child: const Text(
                  'Sign Up with Email ID',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {},
                label: const Text('Sign Up with Google'),
                icon: Image.asset('assets/google_logo.png', width: 18),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: const Size(350, 50),
                ),
              ),
              const SizedBox(height: 25),
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 15),
                  children: [
                    TextSpan(text: 'Already have an account? '),
                    TextSpan(
                      text: 'Sign in',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
