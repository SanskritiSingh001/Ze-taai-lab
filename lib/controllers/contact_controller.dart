import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Owns all state for the Contact screen: text controllers, the form
/// key, and submit/loading state. Keeps [ContactScreen] a dumb,
/// reactive `GetView` with no local state of its own.
class ContactController extends GetxController {
  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final messageController = TextEditingController();

  final RxBool isSubmitting = false.obs;

  Future<void> submitForm() async {
    if (!formKey.currentState!.validate()) return;

    isSubmitting.value = true;

    // Simulate a network call — swap for a real repository call
    // (see lib/data/*_repository.dart) once the backend is wired up.
    await Future.delayed(const Duration(milliseconds: 600));

    isSubmitting.value = false;

    Get.snackbar(
      'Message sent',
      "Thanks for reaching out — we'll get back to you soon.",
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.all(16),
    );

    nameController.clear();
    emailController.clear();
    phoneController.clear();
    messageController.clear();
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    messageController.dispose();
    super.onClose();
  }
}
