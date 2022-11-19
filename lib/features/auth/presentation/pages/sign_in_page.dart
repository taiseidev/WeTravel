import 'package:flutter/material.dart';
import 'package:we_travel/features/auth/presentation/pages/sign_in_page_body.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignInPageBody(),
    );
  }
}
