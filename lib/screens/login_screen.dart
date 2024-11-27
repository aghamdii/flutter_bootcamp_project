import 'package:bootcamp_flutter_project/screens/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(
          38.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo part
            Text(
              'Todoie',
            ),
            SizedBox(
              height: 28.0,
            ),
            // Welcome part
            Row(
              children: [
                Text('Welcome all!'),
                Text('Picture'),
              ],
            ),
            SizedBox(
              height: 24.0,
            ),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
