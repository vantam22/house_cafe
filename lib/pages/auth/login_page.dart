import 'package:flutter/material.dart';

import 'package:house_cafe/pages/auth/register_page.dart';
import 'package:house_cafe/pages/cart/coffee_page.dart';

import '../../components/button/app_elevanted_button.dart';
import '../../components/text_filed/app_text_filed.dart';
import '../../components/text_filed/app_text_filed_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0).copyWith(
              top: MediaQuery.of(context).padding.top + 90, bottom: 20.0),
          children: [
            Text(
              'Welcome Back',
              style:
                  TextStyle(color: Colors.greenAccent.shade700, fontSize: 24.0),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4.0),
            const Text(
              'Login to your account',
              style: TextStyle(color: Colors.grey, fontSize: 18.0),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 60.0),
            AppTextFiled(
              controller: emailController,
              hintText: 'Email or Phone',
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 20.0),
            AppTextFieldPassword(
              controller: passwordController,
              hintText: 'Password',
              textInputAction: TextInputAction.done,
            ),
            const SizedBox(height: 4.0),
            const Text(
              'Forgot Password?',
              style: TextStyle(color: Colors.red, fontSize: 16.8),
              textAlign: TextAlign.right,
            ),
            const SizedBox(height: 60.0),
            AppElevatedButton(
              onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const CoffeePage()),
                (Route<dynamic> route) => false,
              ),
              text: 'Login',
            ),
            const SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account, ',
                  style: TextStyle(color: Colors.grey, fontSize: 16.8),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage(),
                    ),
                  ),
                  child: const Text(
                    'Sign up',
                    style: TextStyle(color: Colors.red, fontSize: 16.8),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
