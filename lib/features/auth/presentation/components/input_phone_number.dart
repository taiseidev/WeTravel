import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../controllers/auth_controller.dart';

void inputPhoneNumberDialog(BuildContext context) {
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

class InputPhoneNumber extends HookConsumerWidget {
  const InputPhoneNumber({super.key});

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
                  onPressed: () async {
                    Navigator.pop(context);
                    await ref
                        .read(authControllerProvider.notifier)
                        .verifyPhoneNumber(
                          number: ref.read(phoneNumberProvider),
                        );
                  },
                  child: const Text(
                    '送信',
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
              '電話番号を入力してください',
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
                    ref.read(phoneNumberProvider.notifier).update(
                          (state) => state = value,
                        );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
