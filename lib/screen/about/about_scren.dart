import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Zeta AI Labs'),
        elevation: 0,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
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

              const Text(
                'A Hive of Digital Innovation',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1B1B1B),
                ),
              ),

              const SizedBox(height: 20),
              // COMPANY OVERVIEW
              _sectionTitle('Company Overview'),

              const SizedBox(height: 10),

              const Text(
                'ZETA AI LABS is dedicated to advancing artificial '
                    'intelligence through innovative solutions, emphasizing '
                    'collaboration, sustainability, and enhancing everyday '
                    'technology for a smarter future.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Color(0xFF555555),
                ),
              ),

              const SizedBox(height: 30),
              // VISION
              _sectionTitle('Our Vision'),

              const SizedBox(height: 10),

              const Text(
                'To build innovative and intelligent digital solutions '
                    'that create meaningful value for businesses and users '
                    'while contributing to a smarter digital future.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Color(0xFF555555),
                ),
              ),

              const SizedBox(height: 30),
              // WHY CHOOSE US
              _sectionTitle('Why Choose Us'),

              const SizedBox(height: 16),

              _infoCard(
                icon: Icons.design_services_outlined,
                title: 'Minimal & Modern Design',
                description:
                'We focus on creating simple, modern and '
                    'easy-to-navigate digital experiences.',
              ),

              const SizedBox(height: 12),

              _infoCard(
                icon: Icons.analytics_outlined,
                title: 'Crystal Clear Reporting',
                description:
                'Continuous reporting and analytics help '
                    'businesses track their performance effectively.',
              ),

              const SizedBox(height: 12),

              _infoCard(
                icon: Icons.language,
                title: 'Take Your Business Online',
                description:
                'We help businesses establish and expand '
                    'their digital presence.',
              ),

              const SizedBox(height: 30),
              // OUR TEAM
              _sectionTitle('Our Team'),

              const SizedBox(height: 16),

              _teamMember(
                'Shubranshu Tripathy',
                'Full Stack Developer',
              ),

              _teamMember(
                'Anushka Dash',
                'HR Manager',
              ),

              _teamMember(
                'Kalavakuri Gopika',
                'AIML Developer & Team Leader',
              ),

              _teamMember(
                'Subhankar',
                'CTO',
              ),

              _teamMember(
                'Geetika Gaba',
                'Project Manager',
              ),

              _teamMember(
                'Meghna Das',
                'AIML Developer',
              ),

              _teamMember(
                'Disa Prusty',
                'AIML Developer',
              ),

              _teamMember(
                'Saswati S Patra',
                'AIML Developer',
              ),

              _teamMember(
                'Monisha Pal',
                'AIML Developer',
              ),

              _teamMember(
                'B Swetha',
                'AIML Developer',
              ),

              _teamMember(
                'Aparna Swain',
                'AIML Developer',
              ),

              _teamMember(
                'Barsharani Das',
                'AIML Developer',
              ),

              _teamMember(
                'Shruthi MN',
                'Business Analyst',
              ),

              _teamMember(
                'Ruchika Wadki',
                'Business Analyst',
              ),

              _teamMember(
                'Suchit Jade',
                'IoT and Blockchain Developer',
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
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
        border: Border.all(
          color: const Color(0xFFE5E5E5),
        ),
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
            child: Icon(
              icon,
              color: const Color(0xFF2E7D32),
              size: 25,
            ),
          ),

          const SizedBox(width: 14),

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
  // TEAM MEMBER
  static Widget _teamMember(
      String name,
      String designation,
      ) {
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
            child: Icon(
              Icons.person_outline,
              color: Color(0xFF2E7D32),
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),

                const SizedBox(height: 3),

                Text(
                  designation,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF777777),
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