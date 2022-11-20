import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
    required this.callback,
    required this.text,
    required this.icon,
  });

  final VoidCallback callback;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black54,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            const Gap(10),
            Text(text),
          ],
        ),
      ),
    );
  }
}
