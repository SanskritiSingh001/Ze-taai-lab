import 'package:get/get.dart';

import '../core/constants/routes.dart';

/// Owns the splash screen's "when do we leave" logic.
///
/// The entrance animation itself stays inside [SplashScreen] because it
/// needs a `TickerProvider`, which controllers don't have — but *when*
/// to hand off to Home is application state, so it belongs here instead
/// of buried in a widget's `initState`.
class SplashController extends GetxController {
  static const _splashDuration = Duration(milliseconds: 1800);

  @override
  void onReady() {
    super.onReady();
    _goToHomeAfterDelay();
  }

  Future<void> _goToHomeAfterDelay() async {
    await Future.delayed(_splashDuration);
    Get.offAllNamed(Routes.home);
  }
}
