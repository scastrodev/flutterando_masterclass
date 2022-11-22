import 'package:flutter/material.dart';
import 'package:tinder_screen/custom_outlined_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 30),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0XFFED7361), Color(0XFFE94976)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/tinder_logo.png',
              width: 250,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 350),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(text: 'By tapping Create Account or Sign In, you agree to our '),
                    TextSpan(
                      text: 'Terms.',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                    TextSpan(text: ' Learn how we process your data in our '),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                    TextSpan(text: ' and '),
                    TextSpan(
                      text: 'Cookies Policy.',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const CustomOutlinedButton(label: 'Sign in with apple', iconName: 'apple_logo'),
            const SizedBox(height: 15),
            const CustomOutlinedButton(label: 'Sign in with facebook', iconName: 'facebook_logo'),
            const SizedBox(height: 15),
            const CustomOutlinedButton(
              iconName: 'message_icon',
              label: 'Sign in with phone number',
            ),
            const SizedBox(height: 20),
            const Text(
              'Trouble Signing In?',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
