import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// 電話番号を一時保管するProvider
final phoneNumberProvider = StateProvider<int>((ref) => 0);

class SignInWithPhoneDialog extends ConsumerWidget {
  SignInWithPhoneDialog({
    super.key,
    required this.okButtonText,
    required this.contents,
    required this.callback,
  });

  String okButtonText;
  String contents;
  VoidCallback callback;

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
                  onPressed: callback,
                  child: Text(
                    okButtonText,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(20),
            Text(
              contents,
              style: const TextStyle(
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
                          (state) => state = int.parse(value),
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
