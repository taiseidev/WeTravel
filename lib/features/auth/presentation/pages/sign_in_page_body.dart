import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:we_travel/features/auth/presentation/components/sign_in_with_phone_dialog.dart';
import 'package:we_travel/widgets/dialog/common_dialog.dart';

import '../components/sign_in_button.dart';
import '../controllers/auth_controller.dart';

class SignInPageBody extends HookConsumerWidget {
  const SignInPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authControllerProvider);

    ref.listen<String>(
      verificationIdProvider,
      (previous, next) async {
        if (next.isNotEmpty) {
          await showModalBottomSheet<void>(
            context: context,
            isScrollControlled: true,
            isDismissible: false,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(15),
              ),
            ),
            builder: (context) => Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SizedBox(
                height: 250,
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(
                            Icons.clear,
                            size: 30,
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            ref
                                .read(authControllerProvider.notifier)
                                .signInWithPhoneNumber(
                                  smsCode: ref.read(smsCodeProvider),
                                );
                            Navigator.pop(context);
                          },
                          child: const Text(
                            '認証',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(20),
                    const Text(
                      '認証コードを入力してください。',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Gap(30),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                      ),
                      child: TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.phone,
                        maxLength: 11,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            ref.read(smsCodeProvider.notifier).update(
                                  (state) => state = value,
                                );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );

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
                icon: Icons.g_mobiledata,
              ),
              const Gap(10),
              SignInButton(
                callback: () =>
                    ref.read(authControllerProvider.notifier).signInWithApple(),
                text: 'Appleアカウントで登録',
                icon: Icons.apple,
              ),
              const Gap(10),
              SignInButton(
                callback: () => _buildInputPhoneNumberDialog(context: context),
                text: '電話番号で登録',
                icon: Icons.phone,
              ),
            ],
          ),
        ),
      ),
      error: (error, stackTrace) {
        return Center(
          child: Text(error.toString()),
        );
      },
      loading: () => const Center(
        child: CommonDialog(),
      ),
    );
  }

  void _buildInputPhoneNumberDialog({required BuildContext context}) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
      ),
      builder: (context) => const InputPhoneNumber(),
    );
  }
}

class InputPhoneNumber extends HookConsumerWidget {
  const InputPhoneNumber({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SignInWithPhoneDialog(
      okButtonText: '送信',
      contents: '電話番号を入力してください。',
      callback: () async {
        Navigator.pop(context);
        await ref.read(authControllerProvider.notifier).verifyPhoneNumber(
              number: ref.read(phoneNumberProvider),
            );
      },
    );
  }
}
