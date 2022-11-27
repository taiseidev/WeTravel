import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:we_travel/router/salomon_bottom_bar.dart';

// ホーム画面のタブ
final tabsProvider = Provider<List<SalomonBottomBarItem>>(
  (ref) => [
    /// Home
    SalomonBottomBarItem(
      icon: const Icon(Icons.wallet_travel_rounded),
      title: const Text('Trip'),
      selectedColor: Colors.purple,
      initialLocation: '/trip',
    ),

    /// Notification
    SalomonBottomBarItem(
      icon: const Icon(Icons.trending_up),
      title: const Text('Trend'),
      selectedColor: Colors.orange,
      initialLocation: '/trend',
    ),

    /// Article
    SalomonBottomBarItem(
      icon: const Icon(Icons.article_outlined),
      title: const Text('Article'),
      selectedColor: Colors.pink,
      initialLocation: '/article',
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
