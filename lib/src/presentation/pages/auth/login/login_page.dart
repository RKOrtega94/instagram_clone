import 'package:flutter/material.dart';
import 'package:instagram_clone/src/presentation/layouts/auth/auth_layout.dart';
import 'package:instagram_clone/src/presentation/widgets/fields/text_field_widget.dart';

class LoginPage extends StatelessWidget {
  static const String route = '/login';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthLayout(
      child: Column(
        children: [
          TextFieldWidget(),
        ],
      ),
    );
  }
}
