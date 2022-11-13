import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// GoRouterメインで使用するkey
final rootNavigatorProvider = Provider((_) => GlobalKey<NavigatorState>());

// ShellRouter用のkey
final shellNavigatorProvider = Provider((_) => GlobalKey<NavigatorState>());
