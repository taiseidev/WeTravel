import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CommonDialog extends StatelessWidget {
  const CommonDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.network(
      'https://assets2.lottiefiles.com/packages/lf20_wofwoz8o.json',
    );
  }
}
