import 'package:bootcamp_flutter_project/core/utils/validators_utils.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      key: _key,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email',
          ),
          TextFormField(
            controller: _emailController,
            validator: (value) => ValidatorsUtils.validateEmail(
              value,
            ),
          ),
          SizedBox(
            height: 48.0,
          ),
          Text('Password'),
          TextFormField(
            controller: _passwordController,
            validator: (value) => ValidatorsUtils.validatePassword(
              value,
            ),
            obscureText: true,
          ),
          SizedBox(
            height: 42,
          ),
          Center(
            child: SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  print(_emailController.text);
                },
                child: Text(
                  'Login',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
