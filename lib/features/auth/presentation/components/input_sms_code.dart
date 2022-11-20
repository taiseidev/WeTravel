import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../controllers/auth_controller.dart';

void inputSmsCodeDialog(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    isDismissible: false,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(15),
      ),
    ),
    builder: (context) => const InputSmsCode(),
  );
}

class InputSmsCode extends HookConsumerWidget {
  const InputSmsCode({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
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
              child: PinCodeTextField(
                autoFocus: true,
                keyboardType: TextInputType.phone,
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    ref.read(smsCodeProvider.notifier).update(
                          (state) => state = value,
                        );
                  }
                },
                appContext: context,
                length: 6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
