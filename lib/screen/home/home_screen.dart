import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/routes.dart';
import '../../core/utils/responsive.dart';
import '../about/widgets/app_bar/zeta_app_bar.dart';
import '../about/widgets/cards/ClientLogo.dart';
import '../about/widgets/cards/PortfolioCard.dart';
import '../about/widgets/cards/TestimonialCard.dart';
import '../about/widgets/cards/feature_card.dart';
import '../about/widgets/service_card/service_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    final sectionPad = Responsive.sectionPadding(context);

    return Scaffold(
      appBar: const ZetaAppBar(title: 'Zeta AI Labs'),
      drawer: isDesktop ? null : const ZetaDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1200),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // HERO SECTION
                Padding(
                  padding: sectionPad,
                  child: isDesktop
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(child: _heroText(context)),
                            const SizedBox(width: 48),
                            Expanded(
                              child: Image.asset(
                                'assets/images/hero/hero image.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _heroText(context),
                            const SizedBox(height: 32),
                            Image.asset(
                              'assets/images/hero/hero image.png',
                              height: Responsive.heroImageHeight(context),
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                ),

                // WHO WE ARE SECTION
                Padding(
                  padding: sectionPad,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _eyebrow(context, 'WHO WE ARE'),
                      const SizedBox(height: 8),
                      _sectionTitle(context, 'Company Overview'),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: isDesktop ? 720 : double.infinity,
                        child: Text(
                          'ZETA AI LABS is dedicated to advancing artificial intelligence '
                          'through innovative solutions, emphasizing our commitment to '
                          'collaboration, sustainability, and enhancing everyday technology '
                          'for a smarter future.',
                          style: TextStyle(
                            fontSize: Responsive.bodyTextSize(context),
                            height: 1.5,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextButton(
                        onPressed: () => Get.toNamed(Routes.about),
                        child: const Text('Read More →'),
                      ),
                    ],
                  ),
                ),

                // OUR SERVICES SECTION
                Padding(
                  padding: sectionPad,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _eyebrow(context, 'OUR SERVICES'),
                      const SizedBox(height: 8),
                      _sectionTitle(context, 'What We Do'),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 140,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children:  [
                            serviceCard(icon: Icons.smart_toy_outlined, title: 'AI Solutions'),
                            serviceCard(icon: Icons.code, title: 'Software'),
                            serviceCard(icon: Icons.analytics_outlined, title: 'Analytics'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () => Get.toNamed(Routes.services),
                          child: const Text('View All →'),
                        ),
                      ),
                    ],
                  ),
                ),

                // WHY CHOOSE US SECTION
                Padding(
                  padding: sectionPad,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _eyebrow(context, 'WHY CHOOSE US'),
                      const SizedBox(height: 8),
                      _sectionTitle(context, 'Why Choose Us'),
                      const SizedBox(height: 20),
                      Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        children: const [
                          FeatureCard(
                            icon: Icons.design_services_outlined,
                            title: 'Minimal & Modern Design',
                            description:
                                'We create simple, modern and easy-to-navigate '
                                'websites that improve usability and ROI.',
                          ),
                          FeatureCard(
                            icon: Icons.analytics_outlined,
                            title: 'Crystal Clear Reporting',
                            description:
                                'We provide continuous reporting and analytics '
                                'so you can track leads and sales precisely.',
                          ),
                          FeatureCard(
                            icon: Icons.language,
                            title: 'Take Your Business Online',
                            description:
                                'We help businesses build their online presence '
                                'and reach a wider audience through effective '
                                'web development and marketing.',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // KEY ACHIEVEMENTS / TRUSTED BY
                Padding(
                  padding: sectionPad,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _eyebrow(context, 'TRUSTED BY'),
                      const SizedBox(height: 8),
                      _sectionTitle(context, 'Our Clients'),
                      const SizedBox(height: 20),
                      Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        children: const [
                          ClientLogo(
                            imagePath: 'assets/images/clients/kgs.png',
                            clientName: 'KGS Technology Group',
                          ),
                          ClientLogo(
                            imagePath: 'assets/images/clients/rgcc.png',
                            clientName: 'RGCC',
                          ),
                          ClientLogo(
                            imagePath: 'assets/images/clients/jacob_rochester.png',
                            clientName: 'Jacob Rochester',
                          ),
                          ClientLogo(
                            imagePath: 'assets/images/clients/faye_greenman.png',
                            clientName: 'Faye Greenman Art',
                          ),
                          ClientLogo(
                            imagePath: 'assets/images/clients/prana.png',
                            clientName: 'Prana Leisure Group',
                          ),
                          ClientLogo(
                            imagePath: 'assets/images/clients/ahwan.png',
                            clientName: 'Ahwan Interior',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // PORTFOLIO PREVIEW
                Padding(
                  padding: sectionPad,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _eyebrow(context, 'OUR WORK'),
                      const SizedBox(height: 8),
                      _sectionTitle(context, 'Featured Projects'),
                      const SizedBox(height: 20),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          final columns = Responsive.gridColumns(context);
                          const projects = [
                            PortfolioCard(
                              imagePath: 'assets/images/portfolio/culinary_platform.png',
                              name: 'Culinary Portfolio Platform',
                              category: 'Restaurant Technology',
                              description:
                                  'A culinary portfolio platform showcasing unique dishes, '
                                  'chef expertise and brand identity through an immersive '
                                  'digital food experience.',
                            ),
                            PortfolioCard(
                              imagePath: 'assets/images/portfolio/dubai_hotels.png',
                              name: 'Dubai Hotel Search & Booking',
                              category: 'Travel & Hospitality',
                              description:
                                  'A smart hotel search and booking platform allowing users '
                                  'to discover hotels by location, budget, amenities and '
                                  'real-time availability.',
                            ),
                            PortfolioCard(
                              imagePath: 'assets/images/portfolio/dess.png',
                              name: 'DESS Educational Platform',
                              category: 'Education Technology',
                              description:
                                  'A modern educational platform developed for Dubai English '
                                  'Speaking School, focused on accessibility, interactivity '
                                  'and seamless communication.',
                            ),
                            PortfolioCard(
                              imagePath: 'assets/images/portfolio/aster_clinic.png',
                              name: 'Aster Clinic Doctor Platform',
                              category: 'Healthcare Technology',
                              description:
                                  'An intelligent doctor discovery and appointment platform '
                                  'helping patients find medical specialists across '
                                  'different branches and specialties.',
                            ),
                          ];

                          if (columns == 1) {
                            return Column(children: projects);
                          }

                          final cardWidth =
                              (constraints.maxWidth - (columns - 1) * 16) / columns;

                          return Wrap(
                            spacing: 16,
                            runSpacing: 16,
                            children: [
                              for (final card in projects)
                                SizedBox(width: cardWidth, child: card),
                            ],
                          );
                        },
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () => Get.toNamed(Routes.portfolio),
                          child: const Text('View All →'),
                        ),
                      ),
                    ],
                  ),
                ),

                // TESTIMONIALS
                Padding(
                  padding: sectionPad,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _eyebrow(context, 'WHAT CLIENTS SAY'),
                      const SizedBox(height: 8),
                      _sectionTitle(context, 'Client Feedback'),
                      const SizedBox(height: 20),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          final columns = Responsive.gridColumns(context);
                          const testimonials = [
                            TestimonialCard(
                              quote:
                                  'Our Mobile sales have skyrocketed since launching '
                                  'the app. The AR feature is a game-changer for our customers.',
                              clientName: 'Michael Chen',
                              designation: 'Head of Digital, RetailMax',
                            ),
                            TestimonialCard(
                              quote:
                                  'The team developed beyond our expectations. The platform '
                                  'has transformed how our clients interact with our services.',
                              clientName: 'Sarah Johnson',
                              designation: 'CTO, TechFlow Solutions',
                            ),
                            TestimonialCard(
                              quote:
                                  'Our students are more engaged than ever. The platform '
                                  'makes learning fun and accessible from anywhere.',
                              clientName: 'James Wilson',
                              designation: 'Director of Education, EduLearn Academy',
                            ),
                            TestimonialCard(
                              quote:
                                  'This system has revolutionized our practice. We can now '
                                  'serve more patients while maintaining the highest quality of care.',
                              clientName: 'Dr. Emily Rodriguez',
                              designation: 'Medical Director, HealthCare Plus',
                            ),
                          ];

                          if (columns == 1) {
                            return Column(children: testimonials);
                          }

                          final cardWidth =
                              (constraints.maxWidth - (columns - 1) * 16) / columns;

                          return Wrap(
                            spacing: 16,
                            runSpacing: 16,
                            children: [
                              for (final card in testimonials)
                                SizedBox(width: cardWidth, child: card),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),

                // CTA SECTION
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                    horizontal: Responsive.horizontalPadding(context),
                  ).copyWith(top: 40, bottom: 20),
                  padding: const EdgeInsets.all(28),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1B1B1B),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Let's build something.",
                        style: TextStyle(
                          fontSize: Responsive.sectionTitleSize(context),
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Have an idea or project in mind? '
                        'Let’s work together.',
                        style: TextStyle(fontSize: 15, height: 1.5, color: Colors.white70),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () => Get.toNamed(Routes.contact),
                        child: const Text('Contact Us'),
                      ),
                    ],
                  ),
                ),

                // FOOTER
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.fromLTRB(20, 32, 20, 24),
                  color: const Color(0xFFF5F5F5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/logo/Logo.jpeg',
                        width: 150,
                        height: 60,
                        fit: BoxFit.contain,
                        alignment: Alignment.centerLeft,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'J-14, BJB Nagar, Lewis Road,\n'
                        'Bhubaneswar 751014, Odisha, India',
                        style: TextStyle(fontSize: 14, height: 1.5),
                      ),
                      const SizedBox(height: 12),
                      const Text('+91-9337287145', style: TextStyle(fontSize: 14)),
                      const SizedBox(height: 8),
                      const Text('info@zetaailabs.com', style: TextStyle(fontSize: 14)),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          IconButton(onPressed: () {}, icon: const Icon(Icons.business)),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.language)),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.email_outlined)),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Divider(),
                      const SizedBox(height: 12),
                      Text(
                        '© ${DateTime.now().year} ZETA AI LABS. All rights reserved.',
                        style: const TextStyle(fontSize: 12, color: Color(0xFF777777)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _heroText(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'AI Innovation Team',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF2E7D32)),
        ),
        const SizedBox(height: 12),
        Text(
          'Revolutionizing AI',
          style: TextStyle(
            fontSize: Responsive.pageTitleSize(context),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'AI Innovation Team Empowering your Digital Future',
          style: TextStyle(fontSize: Responsive.bodyTextSize(context), height: 1.5),
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: () => Get.toNamed(Routes.contact),
          child: const Text('Get in Touch'),
        ),
      ],
    );
  }

  Widget _eyebrow(BuildContext context, String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Color(0xFF2E7D32),
        letterSpacing: 1.2,
      ),
    );
  }

  Widget _sectionTitle(BuildContext context, String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: Responsive.sectionTitleSize(context),
        fontWeight: FontWeight.bold,
        color: const Color(0xFF1B1B1B),
      ),
    );
  }
}
