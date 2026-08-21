import 'package:flutter/material.dart';

import '../about/widgets/cards/ClientLogo.dart';
import '../about/widgets/cards/PortfolioCard.dart';
import '../about/widgets/cards/TestimonialCard.dart';
import '../about/widgets/cards/feature_card.dart';
import '../about/widgets/service_card/service_card.dart';


class HomeScreen extends StatelessWidget {
  const   HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // HERO SECTION
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    'AI Innovation Team',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    'Revolutionizing AI',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    'Your company tagline goes here.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 24),

                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Get in Touch'),
                  ),

                  const SizedBox(height: 32),

                  Image.asset(
                    'assets/images/hero/hero image.png',
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            // WHO WE ARE SECTION
            Padding(
              padding: const EdgeInsets.fromLTRB(
                20,
                40,
                20,
                20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    'WHO WE ARE',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'ZETA AI LABS',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    'Your company introduction goes here. '
                        'Keep this short on the Home screen and '
                        'provide the complete information on the '
                        'About screen.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 16),

                  TextButton(
                    onPressed: () {
                      // Navigate to AboutScreen
                    },
                    child: const Text(
                      'Read More →',
                    ),
                  ),
                ],
              ),
            ),
            // OUR SERVICES SECTION
            Padding(
              padding: const EdgeInsets.fromLTRB(
                20,
                40,
                20,
                20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    'OUR SERVICES',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'What We Do',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  SizedBox(
                    height: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [

                        serviceCard(
                          icon: Icons.smart_toy_outlined,
                          title: 'AI Solutions',
                        ),

                        serviceCard(
                          icon: Icons.code,
                          title: 'Software',
                        ),

                        serviceCard(
                          icon: Icons.analytics_outlined,
                          title: 'Analytics',
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 12),

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        // Navigate to ServicesScreen
                      },
                      child: const Text(
                        'View All →',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // WHY CHOOSE US SECTION
            Padding(
              padding: const EdgeInsets.fromLTRB(
                20,
                40,
                20,
                20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    'WHY CHOOSE US',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2E7D32),
                      letterSpacing: 1.2,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Why Choose Us',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1B1B1B),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: const [

                      FeatureCard(
                        icon: Icons.auto_awesome,
                        title: 'Innovation',
                        description:
                        'Your actual company description from the profile.',
                      ),

                      FeatureCard(
                        icon: Icons.groups_outlined,
                        title: 'Expertise',
                        description:
                        'Your actual company description from the profile.',
                      ),

                      FeatureCard(
                        icon: Icons.trending_up,
                        title: 'Growth',
                        description:
                        'Your actual company description from the profile.',
                      ),
                    ],
                  ),
                ],
              ),
            ),
                  // KEY ACHIEVEMENTS / TRUSTED BY
            Padding(
              padding: const EdgeInsets.fromLTRB(
                20,
                40,
                20,
                20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    'TRUSTED BY',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2E7D32),
                      letterSpacing: 1.2,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Our Clients',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1B1B1B),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: [

                      ClientLogo(
                        imagePath: 'assets/images/clients/client_1.png',
                        clientName: 'Client 1',
                      ),

                      ClientLogo(
                        imagePath: 'assets/images/clients/client_2.png',
                        clientName: 'Client 2',
                      ),

                      ClientLogo(
                        imagePath: 'assets/images/clients/client_3.png',
                        clientName: 'Client 3',
                      ),

                      ClientLogo(
                        imagePath: 'assets/images/clients/client_4.png',
                        clientName: 'Client 4',
                      ),
                    ],
                  ),
                ],
              ),
            ),
               // PORTFOLIO PREVIEW
            Padding(
              padding: const EdgeInsets.fromLTRB(
                20,
                40,
                20,
                20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    'OUR WORK',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2E7D32),
                      letterSpacing: 1.2,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Featured Projects',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1B1B1B),
                    ),
                  ),

                  const SizedBox(height: 20),

                  const PortfolioCard(
                    imagePath: 'assets/images/portfolio/ai.jpeg',
                    name: 'AI Platform',
                    category: 'Artificial Intelligence',
                    description:
                    'An intelligent solution designed to automate '
                        'business processes and improve decision making.',
                  ),

                  const PortfolioCard(
                    imagePath: 'assets/images/portfolio/smart.jpeg',
                    name: 'Smart Analytics',
                    category: 'Analytics',
                    description:
                    'A data-driven platform providing actionable '
                        'insights through intelligent analytics.',
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        // Navigate to PortfolioScreen
                      },
                      child: const Text(
                        'View All →',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // TESTIMONIALS
            Padding(
              padding: const EdgeInsets.fromLTRB(
                20,
                40,
                20,
                20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    'WHAT CLIENTS SAY',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2E7D32),
                      letterSpacing: 1.2,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Client Feedback',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1B1B1B),
                    ),
                  ),

                  const SizedBox(height: 20),

                  const TestimonialCard(
                    quote:
                    'ZETA AI LABS delivered an excellent solution '
                        'that helped us improve our business operations.',
                    clientName: 'Client Name',
                    designation: 'CEO, Company',
                  ),
                ],
              ),
            ),
            // CTA SECTION
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(
                20,
                40,
                20,
                20,
              ),
              padding: const EdgeInsets.all(28),
              decoration: BoxDecoration(
                color: const Color(0xFF1B1B1B),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    "Let's build something.",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    'Have an idea or project in mind? '
                        'Let’s work together.',
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.5,
                      color: Colors.white70,
                    ),
                  ),

                  const SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {
                      // Navigate to ContactScreen
                    },
                    child: const Text(
                      'Contact Us',
                    ),
                  ),
                ],
              ),
            ),
             // FOOTER
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.fromLTRB(
                20,
                32,
                20,
                24,
              ),
              color: const Color(0xFFF5F5F5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Logo
                  Image.asset(
                    'assets/images/logo/Logo.jpeg',
                    width: 120,
                    height: 40,
                    fit: BoxFit.contain,
                    alignment: Alignment.centerLeft,
                  ),

                  const SizedBox(height: 20),

                  // Address
                  const Text(
                    'Your company address goes here.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Color(0xFF666666),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Social Icons
                  Row(
                    children: [

                      IconButton(
                        onPressed: () {
                          // Open LinkedIn
                        },
                        icon: const Icon(Icons.business),
                      ),

                      IconButton(
                        onPressed: () {
                          // Open website
                        },
                        icon: const Icon(Icons.language),
                      ),

                      IconButton(
                        onPressed: () {
                          // Open email
                        },
                        icon: const Icon(Icons.email_outlined),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  const Divider(),

                  const SizedBox(height: 12),

                  // Copyright
                  Text(
                    '© ${DateTime.now().year} ZETA AI LABS. All rights reserved.',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF777777),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}