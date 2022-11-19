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
                callback: () => showModalBottomSheet<void>(
                  context: context,
                  isScrollControlled: true,
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
                      height: 300,
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
                                onPressed: () {},
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
                            '電話番号を入力してください。',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Gap(30),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              maxLength: 11,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                text: '電話番号で登録',
                icon: Icons.apple,
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
}
