import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:house_cafe/components/button/app_elevanted_button.dart';
import 'package:house_cafe/pages/auth/login_page.dart';

import '../../components/text_filed/app_text_filed.dart';
import '../../components/text_filed/app_text_filed_password.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  bool isChecked = false;

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
              'Register',
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
              controller: nameController,
              hintText: 'Full Name',
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 20.0),
            AppTextFiled(
              controller: emailController,
              hintText: 'Email or Phone',
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 20.0),
            AppTextFieldPassword(
              controller: passwordController,
              hintText: 'Password',
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 20.0),
            AppTextFieldPassword(
              controller: confirmpasswordController,
              hintText: 'Confirm Password',
              textInputAction: TextInputAction.done,
            ),
            const SizedBox(height: 24.0),
            Row(
              children: [
                InkWell(
                  onTap: () => setState(() => isChecked = !isChecked),
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 6.0, bottom: 6.0),
                    child: Icon(
                      isChecked
                          ? Icons.check_box
                          : Icons.check_box_outline_blank,
                      size: 20.0,
                      color: Colors.red,
                    ),
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: 'I agree to your',
                      style:
                          const TextStyle(color: Colors.grey, fontSize: 16.0),
                      children: <TextSpan>[
                        TextSpan(
                          recognizer: TapGestureRecognizer()..onTap = () {},
                          text: ' privacy policy',
                          style: const TextStyle(
                              color: Colors.red, fontSize: 16.0),
                        ),
                        const TextSpan(text: ' and'),
                        TextSpan(
                          recognizer: TapGestureRecognizer()..onTap = () {},
                          text: ' term & conditions',
                          style: const TextStyle(
                              color: Colors.red, fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60.0),
            AppElevatedButton(
              onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const LoginPage()),
                (Route<dynamic> route) => false,
              ),
              text: 'Sign up',
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
                      builder: (context) => const LoginPage(),
                    ),
                  ),
                  child: const Text(
                    'Login',
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
