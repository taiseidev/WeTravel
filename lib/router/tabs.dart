import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:we_travel/router/salomon_bottom_bar.dart';

// ホーム画面のタブ
final tabsProvider = Provider<List<SalomonBottomBarItem>>(
  (ref) => [
    /// Home
    SalomonBottomBarItem(
      icon: const Icon(Icons.home),
      title: const Text('Home'),
      selectedColor: Colors.purple,
      initialLocation: '/home',
    ),

    /// Article
    SalomonBottomBarItem(
      icon: const Icon(Icons.article_outlined),
      title: const Text('Article'),
      selectedColor: Colors.pink,
      initialLocation: '/article',
    ),

    /// Notification
    SalomonBottomBarItem(
      icon: const Icon(Icons.notifications_none),
      title: const Text('Notification'),
      selectedColor: Colors.orange,
      initialLocation: '/notification',
    ),

    /// Profile
    SalomonBottomBarItem(
      icon: const Icon(Icons.person),
      title: const Text('Profile'),
      selectedColor: Colors.teal,
      initialLocation: '/profile',
    ),
  ],
);
