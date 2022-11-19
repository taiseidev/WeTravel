import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:we_travel/app.dart';

import 'gen/firebase_options_dev.dart' as dev;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // name: 'we-travel-project-dev',
    options: dev.DefaultFirebaseOptions.currentPlatform,
    // options: const String.fromEnvironment('FLAVOR') == 'dev'
    //     ? dev.DefaultFirebaseOptions.currentPlatform
    //     : prod.DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
