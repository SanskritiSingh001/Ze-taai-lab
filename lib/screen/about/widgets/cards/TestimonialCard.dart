import 'package:flutter/material.dart';

class TestimonialCard extends StatelessWidget {
  final String quote;
  final String clientName;
  final String designation;

  const TestimonialCard({
    super.key,
    required this.quote,
    required this.clientName,
    required this.designation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F9F7),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFFE5E5E5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // Quote Icon
          const Icon(
            Icons.format_quote,
            size: 36,
            color: Color(0xFF2E7D32),
          ),

          const SizedBox(height: 12),

          // Quote
          Text(
            quote,
            style: const TextStyle(
              fontSize: 16,
              height: 1.6,
              fontStyle: FontStyle.italic,
              color: Color(0xFF333333),
            ),
          ),

          const SizedBox(height: 20),

          // Client Name
          Text(
            clientName,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1B1B1B),
            ),
          ),

          const SizedBox(height: 4),

          // Designation
          Text(
            designation,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xFF777777),
            ),
          ),
        ],
      ),
    );
  }
}