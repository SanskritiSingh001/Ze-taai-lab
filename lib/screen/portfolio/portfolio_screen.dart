import 'package:flutter/material.dart';

import '../../core/utils/responsive.dart';
import '../about/widgets/app_bar/zeta_app_bar.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  static const _projects = [
    (
      'assets/images/portfolio/culinary_platform.png',
      'Culinary Portfolio Platform',
      'Restaurant Technology',
      'A digital culinary portfolio platform showcasing '
          'dishes, chef expertise and brand identity.',
    ),
    (
      'assets/images/portfolio/dubai_hotels.png',
      'Dubai Hotel Search & Booking',
      'Travel & Hospitality',
      'A smart hotel search and booking platform designed '
          'for discovering hotels based on different requirements.',
    ),
    (
      'assets/images/portfolio/dess.png',
      'DESS Educational Platform',
      'Education Technology',
      'An educational platform developed for Dubai English '
          'Speaking School with a focus on accessibility and '
          'communication.',
    ),
    (
      'assets/images/portfolio/aster_clinic.png',
      'Aster Clinic Platform',
      'Healthcare Technology',
      'A doctor discovery and appointment platform helping '
          'patients find medical specialists.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    final columns = Responsive.gridColumns(context);

    return Scaffold(
      appBar: const ZetaAppBar(title: 'Our Portfolio'),
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
                    'OUR WORK',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF2E7D32),
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Our Portfolio',
                    style: TextStyle(
                      fontSize: Responsive.pageTitleSize(context),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Explore some of the digital solutions and '
                    'products developed by Zeta AI Labs.',
                    style: TextStyle(
                      fontSize: Responsive.bodyTextSize(context),
                      height: 1.5,
                      color: const Color(0xFF666666),
                    ),
                  ),
                  const SizedBox(height: 30),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      if (columns == 1) {
                        return Column(
                          children: [
                            for (final p in _projects)
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: _portfolioCard(p),
                              ),
                          ],
                        );
                      }

                      final cardWidth = (constraints.maxWidth - (columns - 1) * 20) / columns;
                      return Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        children: [
                          for (final p in _projects) SizedBox(width: cardWidth, child: _portfolioCard(p)),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  static Widget _portfolioCard((String, String, String, String) project) {
    final (imagePath, title, category, description) = project;

    return Container(
      margin: const EdgeInsets.only(bottom: 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE5E5E5)),
        boxShadow: const [
          BoxShadow(blurRadius: 12, offset: Offset(0, 5), color: Color(0x10000000)),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 190,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: const Color(0xFFF1F1F1),
                  child: const Center(
                    child: Icon(Icons.image_outlined, size: 50, color: Colors.grey),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF2E7D32),
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 7),
                Text(title, style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
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
}
