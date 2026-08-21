import 'package:flutter/material.dart';

Widget serviceCard({
  required IconData icon,
  required String title,
}) {
  return Container(
    width: 140,
    margin: const EdgeInsets.only(right: 12),
    padding: const EdgeInsets.all(16),

    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      border: Border.all(
        color: Colors.grey.shade200,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    ),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Icon(
          icon,
          size: 32,
          color: const Color(0xFF2E7D32),
        ),

        const Spacer(),

        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}
