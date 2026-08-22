import 'package:flutter/material.dart';

import '../../core/utils/responsive.dart';
import '../about/widgets/app_bar/zeta_app_bar.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  static const _services = [
    (
      Icons.smart_toy_outlined,
      'AI / ML',
      'Artificial intelligence and machine learning solutions '
          'designed to solve real business problems.',
    ),
    (
      Icons.code,
      'Software Development',
      'Custom software solutions built around business '
          'requirements and operational needs.',
    ),
    (
      Icons.language,
      'Web Solutions',
      'Modern web applications and digital experiences '
          'designed for businesses and their customers.',
    ),
    (
      Icons.phone_android,
      'Mobile Application',
      'Mobile applications designed to provide engaging '
          'and accessible digital experiences.',
    ),
    (
      Icons.cloud_outlined,
      'Cloud Services',
      'Scalable cloud-based solutions for modern digital '
          'products and business operations.',
    ),
    (
      Icons.devices_other,
      'IoT Solutions',
      'Connected technology solutions that help businesses '
          'use data and devices more effectively.',
    ),
    (
      Icons.link,
      'Blockchain',
      'Blockchain-based solutions for secure and '
          'decentralized digital applications.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    final columns = Responsive.gridColumns(context);

    return Scaffold(
      appBar: const ZetaAppBar(title: 'Our Services'),
      drawer: isDesktop ? null : const ZetaDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: Responsive.sectionPadding(context),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'WHAT WE DO',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF2E7D32),
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Our Services',
                    style: TextStyle(
                      fontSize: Responsive.pageTitleSize(context),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'We provide technology solutions designed to '
                    'help businesses build, modernize and scale '
                    'their digital products.',
                    style: TextStyle(
                      fontSize: Responsive.bodyTextSize(context),
                      height: 1.5,
                      color: const Color(0xFF666666),
                    ),
                  ),
                  const SizedBox(height: 30),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _services.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: columns,
                      mainAxisSpacing: 14,
                      crossAxisSpacing: 14,
                      childAspectRatio: columns == 1 ? 2.2 : 1.6,
                    ),
                    itemBuilder: (context, index) {
                      final (icon, title, description) = _services[index];
                      return _serviceCard(icon: icon, title: title, description: description);
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  static Widget _serviceCard({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFE5E5E5)),
        boxShadow: const [
          BoxShadow(blurRadius: 10, offset: Offset(0, 4), color: Color(0x10000000)),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(13),
            decoration: BoxDecoration(
              color: const Color(0xFFE8F5E9),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icon, size: 28, color: const Color(0xFF2E7D32)),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                const SizedBox(height: 6),
                Text(
                  description,
                  style: const TextStyle(fontSize: 13, height: 1.4, color: Color(0xFF666666)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
