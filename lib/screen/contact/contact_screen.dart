import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/contact_controller.dart';
import '../../core/utils/responsive.dart';
import '../about/widgets/app_bar/zeta_app_bar.dart';

/// Contact screen — a pure `GetView`. All state (text controllers,
/// form key, submitting flag) lives in [ContactController], injected
/// by `ContactBinding` when the '/contact' route is pushed.
class ContactScreen extends GetView<ContactController> {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
      appBar: const ZetaAppBar(title: 'Contact Us'),
      drawer: isDesktop ? null : const ZetaDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: Responsive.sectionPadding(context),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 900),
              child: Form(
                key: controller.formKey,
                child: isDesktop
                    ? IntrinsicHeight(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child: _header(context)),
                            const SizedBox(width: 48),
                            Expanded(child: _form(context)),
                          ],
                        ),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _header(context),
                          const SizedBox(height: 30),
                          _form(context),
                        ],
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // HEADER + CONTACT INFO
  Widget _header(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'GET IN TOUCH',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color(0xFF2E7D32),
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Let’s Build Something Together',
          style: TextStyle(
            fontSize: Responsive.sectionTitleSize(context),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'Have a project, idea or business requirement? '
          'Get in touch with Zeta AI Labs.',
          style: TextStyle(
            fontSize: Responsive.bodyTextSize(context),
            height: 1.5,
            color: const Color(0xFF666666),
          ),
        ),
        const SizedBox(height: 30),
        _contactInfo(
          icon: Icons.location_on_outlined,
          title: 'Address',
          value:
              'J-14, BJB Nagar, Lewis Road,\n'
              'Bhubaneswar 751014, Odisha, India',
        ),
        _contactInfo(
          icon: Icons.phone_outlined,
          title: 'Phone',
          value: '+91-9337287145',
        ),
        _contactInfo(
          icon: Icons.email_outlined,
          title: 'Email',
          value: 'info@zetaailabs.com',
        ),
      ],
    );
  }

  // FORM
  Widget _form(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Send Us a Message',
          style: TextStyle(
            fontSize: Responsive.isMobile(context) ? 22 : 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: controller.nameController,
          decoration: _inputDecoration(label: 'Name', icon: Icons.person_outline),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'Please enter your name';
            }
            return null;
          },
        ),
        const SizedBox(height: 15),
        TextFormField(
          controller: controller.emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: _inputDecoration(label: 'Email', icon: Icons.email_outlined),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'Please enter your email';
            }
            if (!value.contains('@')) {
              return 'Please enter a valid email';
            }
            return null;
          },
        ),
        const SizedBox(height: 15),
        TextFormField(
          controller: controller.phoneController,
          keyboardType: TextInputType.phone,
          decoration: _inputDecoration(label: 'Phone', icon: Icons.phone_outlined),
        ),
        const SizedBox(height: 15),
        TextFormField(
          controller: controller.messageController,
          maxLines: 5,
          decoration: _inputDecoration(label: 'Message', icon: Icons.message_outlined),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'Please enter your message';
            }
            return null;
          },
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: double.infinity,
          height: 52,
          child: Obx(
            () => ElevatedButton(
              onPressed: controller.isSubmitting.value ? null : controller.submitForm,
              child: controller.isSubmitting.value
                  ? const SizedBox(
                      width: 22,
                      height: 22,
                      child: CircularProgressIndicator(strokeWidth: 2.4, color: Colors.white),
                    )
                  : const Text(
                      'Send Message',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
            ),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }

  // CONTACT INFO
  Widget _contactInfo({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFFE8F5E9),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: const Color(0xFF2E7D32)),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(fontSize: 14, height: 1.5, color: Color(0xFF666666)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // INPUT DECORATION
  InputDecoration _inputDecoration({required String label, required IconData icon}) {
    return InputDecoration(
      labelText: label,
      prefixIcon: Icon(icon),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF2E7D32), width: 2),
      ),
    );
  }
}
