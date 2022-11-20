import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class ProfileAppBarPage extends StatelessWidget implements PreferredSize {
  const ProfileAppBarPage({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      title: GestureDetector(
        onTap: () {},
        child: Row(
          children: [
            const Text(
              'Footagereek',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 25,
              ),
            ),
            AnimatedContainer(
              duration: const Duration(seconds: 3),
              curve: Curves.bounceIn,
              child: const Icon(
                Icons.keyboard_arrow_up_rounded,
                color: Colors.black,
                size: 35,
              ),
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.settings,
            color: Colors.black,
          ),
          onPressed: () => Navigator.push<void>(
            context,
            MaterialPageRoute(
              builder: (context) => const SettingPage(),
            ),
          ),
        ),
      ],
    );
  }
}

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SettingsList(
        sections: [
          SettingsSection(
            title: const Text('Common'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: const Icon(Icons.language),
                title: const Text('Language'),
                value: const Text('English'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: true,
                leading: const Icon(Icons.format_paint),
                title: const Text('Enable custom theme'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
