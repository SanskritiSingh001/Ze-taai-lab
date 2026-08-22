import 'package:flutter/material.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      {
        'image': 'assets/images/portfolio/culinary_platform.png',
        'title': 'Culinary Portfolio Platform',
        'category': 'Restaurant Technology',
        'description':
        'A digital culinary portfolio platform showcasing '
            'dishes, chef expertise and brand identity.',
      },
      {
        'image': 'assets/images/portfolio/dubai_hotels.png',
        'title': 'Dubai Hotel Search & Booking',
        'category': 'Travel & Hospitality',
        'description':
        'A smart hotel search and booking platform designed '
            'for discovering hotels based on different requirements.',
      },
      {
        'image': 'assets/images/portfolio/dess.png',
        'title': 'DESS Educational Platform',
        'category': 'Education Technology',
        'description':
        'An educational platform developed for Dubai English '
            'Speaking School with a focus on accessibility and '
            'communication.',
      },
      {
        'image': 'assets/images/portfolio/aster_clinic.png',
        'title': 'Aster Clinic Platform',
        'category': 'Healthcare Technology',
        'description':
        'A doctor discovery and appointment platform helping '
            'patients find medical specialists.',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Portfolio'),
        elevation: 0,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
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

              const Text(
                'Our Portfolio',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'Explore some of the digital solutions and '
                    'products developed by Zeta AI Labs.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Color(0xFF666666),
                ),
              ),

              const SizedBox(height: 30),

              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: projects.length,
                itemBuilder: (context, index) {

                  final project = projects[index];

                  return _portfolioCard(
                    imagePath: project['image']!,
                    title: project['title']!,
                    category: project['category']!,
                    description: project['description']!,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _portfolioCard({
    required String imagePath,
    required String title,
    required String category,
    required String description,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFFE5E5E5),
        ),
        boxShadow: const [
          BoxShadow(
            blurRadius: 12,
            offset: Offset(0, 5),
            color: Color(0x10000000),
          ),
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
              errorBuilder: (
                  context,
                  error,
                  stackTrace,
                  ) {
                return Container(
                  color: const Color(0xFFF1F1F1),
                  child: const Center(
                    child: Icon(
                      Icons.image_outlined,
                      size: 50,
                      color: Colors.grey,
                    ),
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

                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.5,
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