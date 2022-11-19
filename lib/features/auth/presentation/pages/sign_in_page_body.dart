import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:we_travel/widgets/dialog/common_dialog.dart';

import '../components/sign_in_button.dart';
import '../controllers/auth_controller.dart';

class SignInPageBody extends ConsumerWidget {
  const SignInPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authControllerProvider);
    return state.when(
      data: (data) => Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/app_icon.png'),
              const Gap(50),
              ShaderMask(
                child: const Text(
                  'WeTravel',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                shaderCallback: (Rect rect) {
                  return const LinearGradient(
                    colors: [
                      Colors.purple,
                      Colors.pink,
                      Colors.orange,
                      Colors.teal,
                    ],
                  ).createShader(rect);
                },
              ),
              const Gap(50),
              SignInButton(
                callback: () => ref
                    .read(authControllerProvider.notifier)
                    .signInWithGoogle(),
                text: 'Googleアカウントで登録',
                icon: Icons.mail,
              ),
              // SignInButton(
              //   callback: () => ref
              //       .read(authControllerProvider.notifier)
              //       .signInPhoneNumber('09092096513', context),
              //   text: '電話番号で登録',
              //   icon: Icons.phone,
              // ),
            ],
          ),
        ),
      ),
      error: (error, stackTrace) {
        return Center(child: Text(error.toString()));
      },
      loading: () => const Center(
        child: CommonDialog(),
      ),
    );
  }
}
