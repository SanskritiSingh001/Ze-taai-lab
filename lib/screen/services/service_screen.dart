import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final services = [
      {
        'icon': Icons.smart_toy_outlined,
        'title': 'AI / ML',
        'description':
        'Artificial intelligence and machine learning solutions '
            'designed to solve real business problems.',
      },
      {
        'icon': Icons.code,
        'title': 'Software Development',
        'description':
        'Custom software solutions built around business '
            'requirements and operational needs.',
      },
      {
        'icon': Icons.language,
        'title': 'Web Solutions',
        'description':
        'Modern web applications and digital experiences '
            'designed for businesses and their customers.',
      },
      {
        'icon': Icons.phone_android,
        'title': 'Mobile Application',
        'description':
        'Mobile applications designed to provide engaging '
            'and accessible digital experiences.',
      },
      {
        'icon': Icons.cloud_outlined,
        'title': 'Cloud Services',
        'description':
        'Scalable cloud-based solutions for modern digital '
            'products and business operations.',
      },
      {
        'icon': Icons.devices_other,
        'title': 'IoT Solutions',
        'description':
        'Connected technology solutions that help businesses '
            'use data and devices more effectively.',
      },
      {
        'icon': Icons.link,
        'title': 'Blockchain',
        'description':
        'Blockchain-based solutions for secure and '
            'decentralized digital applications.',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Services'),
        elevation: 0,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
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

              const Text(
                'Our Services',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'We provide technology solutions designed to '
                    'help businesses build, modernize and scale '
                    'their digital products.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Color(0xFF666666),
                ),
              ),

              const SizedBox(height: 30),

              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: services.length,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 14,
                  childAspectRatio: 2.2,
                ),
                itemBuilder: (context, index) {

                  final service = services[index];

                  return _serviceCard(
                    icon: service['icon'] as IconData,
                    title: service['title'] as String,
                    description:
                    service['description'] as String,
                  );
                },
              ),

              const SizedBox(height: 20),
            ],
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
        border: Border.all(
          color: const Color(0xFFE5E5E5),
        ),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            offset: Offset(0, 4),
            color: Color(0x10000000),
          ),
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
            child: Icon(
              icon,
              size: 28,
              color: const Color(0xFF2E7D32),
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 13,
                    height: 1.4,
                    color: Color(0xFF666666),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}