import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/routes.dart';
import '../../../../core/utils/responsive.dart';

class _NavItem {
  final String label;
  final String route;

  const _NavItem(this.label, this.route);
}

const _navItems = [
  _NavItem('Home', Routes.home),
  _NavItem('About', Routes.about),
  _NavItem('Services', Routes.services),
  _NavItem('Portfolio', Routes.portfolio),
];

/// Shared top navigation bar used on every screen.
///
/// - Mobile / tablet: a compact AppBar with a page title. Pair it with
///   [ZetaDrawer] on the Scaffold to get a slide-out menu.
/// - Desktop: a full horizontal nav bar with inline links and a
///   "Contact Us" call to action — no drawer needed.
class ZetaAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const ZetaAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return AppBar(
        elevation: 0,
        scrolledUnderElevation: 1,
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.horizontalPadding(context),
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => Get.toNamed(Routes.home),
                child: const Text(
                  'ZETA AI LABS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFF2E7D32),
                  ),
                ),
              ),
              const Spacer(),
              for (final item in _navItems)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: TextButton(
                    onPressed: () => Get.toNamed(item.route),
                    child: Text(item.label),
                  ),
                ),
              const SizedBox(width: 12),
              ElevatedButton(
                onPressed: () => Get.toNamed(Routes.contact),
                child: const Text('Contact Us'),
              ),
            ],
          ),
        ),
      );
    }

    return AppBar(
      elevation: 0,
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

/// Mobile / tablet navigation drawer — pairs with [ZetaAppBar] on
/// screens narrower than the desktop breakpoint. A Flutter [Scaffold]
/// automatically renders the hamburger icon in its AppBar whenever a
/// `drawer` is supplied, so no extra wiring is needed on the screen
/// side beyond `drawer: const ZetaDrawer()`.
class ZetaDrawer extends StatelessWidget {
  const ZetaDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFFF4FAF4)),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'ZETA AI LABS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF1B4D32),
                  ),
                ),
              ),
            ),
            for (final item in _navItems)
              ListTile(
                title: Text(item.label),
                onTap: () {
                  Navigator.of(context).pop();
                  Get.toNamed(item.route);
                },
              ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.mail_outline, color: Color(0xFF2E7D32)),
              title: const Text(
                'Contact Us',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Get.toNamed(Routes.contact);
              },
            ),
          ],
        ),
      ),
    );
  }
}
