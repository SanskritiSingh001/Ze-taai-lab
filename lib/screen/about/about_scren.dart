import 'package:flutter/material.dart';

import '../../core/utils/responsive.dart';
import 'widgets/app_bar/zeta_app_bar.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  static const _team = [
    ('Shubranshu Tripathy', 'Full Stack Developer'),
    ('Anushka Dash', 'HR Manager'),
    ('Kalavakuri Gopika', 'AIML Developer & Team Leader'),
    ('Subhankar', 'CTO'),
    ('Geetika Gaba', 'Project Manager'),
    ('Meghna Das', 'AIML Developer'),
    ('Disa Prusty', 'AIML Developer'),
    ('Saswati S Patra', 'AIML Developer'),
    ('Monisha Pal', 'AIML Developer'),
    ('B Swetha', 'AIML Developer'),
    ('Aparna Swain', 'AIML Developer'),
    ('Barsharani Das', 'AIML Developer'),
    ('Shruthi MN', 'Business Analyst'),
    ('Ruchika Wadki', 'Business Analyst'),
    ('Suchit Jade', 'IoT and Blockchain Developer'),
  ];

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    final columns = Responsive.gridColumns(context);

    return Scaffold(
      appBar: const ZetaAppBar(title: 'About Zeta AI Labs'),
      drawer: isDesktop ? null : const ZetaDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: Responsive.sectionPadding(context),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // PAGE HEADER
                  const Text(
                    'ABOUT US',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF2E7D32),
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'A Hive of Digital Innovation',
                    style: TextStyle(
                      fontSize: Responsive.pageTitleSize(context),
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1B1B1B),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // COMPANY OVERVIEW / VISION — side-by-side on desktop
                  isDesktop
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: _textBlock(
                                context,
                                'Company Overview',
                                'ZETA AI LABS is dedicated to advancing artificial '
                                    'intelligence through innovative solutions, emphasizing '
                                    'collaboration, sustainability, and enhancing everyday '
                                    'technology for a smarter future.',
                              ),
                            ),
                            const SizedBox(width: 40),
                            Expanded(
                              child: _textBlock(
                                context,
                                'Our Vision',
                                'To build innovative and intelligent digital solutions '
                                    'that create meaningful value for businesses and users '
                                    'while contributing to a smarter digital future.',
                              ),
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _textBlock(
                              context,
                              'Company Overview',
                              'ZETA AI LABS is dedicated to advancing artificial '
                                  'intelligence through innovative solutions, emphasizing '
                                  'collaboration, sustainability, and enhancing everyday '
                                  'technology for a smarter future.',
                            ),
                            const SizedBox(height: 30),
                            _textBlock(
                              context,
                              'Our Vision',
                              'To build innovative and intelligent digital solutions '
                                  'that create meaningful value for businesses and users '
                                  'while contributing to a smarter digital future.',
                            ),
                          ],
                        ),

                  const SizedBox(height: 30),
                  // WHY CHOOSE US
                  _sectionTitle('Why Choose Us'),
                  const SizedBox(height: 16),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      const cards = [
                        (
                          Icons.design_services_outlined,
                          'Minimal & Modern Design',
                          'We focus on creating simple, modern and '
                              'easy-to-navigate digital experiences.',
                        ),
                        (
                          Icons.analytics_outlined,
                          'Crystal Clear Reporting',
                          'Continuous reporting and analytics help '
                              'businesses track their performance effectively.',
                        ),
                        (
                          Icons.language,
                          'Take Your Business Online',
                          'We help businesses establish and expand '
                              'their digital presence.',
                        ),
                      ];

                      if (columns == 1) {
                        return Column(
                          children: [
                            for (final c in cards)
                              Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: _infoCard(icon: c.$1, title: c.$2, description: c.$3),
                              ),
                          ],
                        );
                      }

                      final cardWidth = (constraints.maxWidth - (columns - 1) * 12) / columns;
                      return Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        children: [
                          for (final c in cards)
                            SizedBox(
                              width: cardWidth,
                              child: _infoCard(icon: c.$1, title: c.$2, description: c.$3),
                            ),
                        ],
                      );
                    },
                  ),

                  const SizedBox(height: 30),
                  // OUR TEAM
                  _sectionTitle('Our Team'),
                  const SizedBox(height: 16),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      if (columns == 1) {
                        return Column(
                          children: [for (final m in _team) _teamMember(m.$1, m.$2)],
                        );
                      }

                      final itemWidth = (constraints.maxWidth - (columns - 1) * 10) / columns;
                      return Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          for (final m in _team)
                            SizedBox(width: itemWidth, child: _teamMember(m.$1, m.$2)),
                        ],
                      );
                    },
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // TEXT BLOCK (overview / vision)
  Widget _textBlock(BuildContext context, String title, String body) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sectionTitle(title),
        const SizedBox(height: 10),
        Text(
          body,
          style: TextStyle(
            fontSize: Responsive.bodyTextSize(context),
            height: 1.6,
            color: const Color(0xFF555555),
          ),
        ),
      ],
    );
  }

  // SECTION TITLE
  static Widget _sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color(0xFF1B1B1B),
      ),
    );
  }

  // INFORMATION CARD
  static Widget _infoCard({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE5E5E5)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFE8F5E9),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: const Color(0xFF2E7D32), size: 25),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                const SizedBox(height: 6),
                Text(
                  description,
                  style: const TextStyle(fontSize: 14, height: 1.5, color: Color(0xFF666666)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // TEAM MEMBER
  static Widget _teamMember(String name, String designation) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 23,
            backgroundColor: Color(0xFFE8F5E9),
            child: Icon(Icons.person_outline, color: Color(0xFF2E7D32)),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
                const SizedBox(height: 3),
                Text(
                  designation,
                  style: const TextStyle(fontSize: 13, color: Color(0xFF777777)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
