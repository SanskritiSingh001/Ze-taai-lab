import 'package:get/get.dart';

import '../../screen/about/about_scren.dart';
import '../../screen/contact/contact_screen.dart';
import '../../screen/home/home_screen.dart';
import '../../screen/portfolio/portfolio_screen.dart';
import '../../screen/services/service_screen.dart';
import '../../screen/splash/splash_screen.dart';
import '../bindings/contact_binding.dart';
import '../bindings/splash_binding.dart';

/// Centralised route names used across the app.
/// Use these constants instead of hard-coded path strings when
/// navigating with `Get.toNamed(...)`.
abstract class Routes {
  Routes._();

  static const splash = '/splash';
  static const home = '/home';
  static const about = '/about';
  static const services = '/services';
  static const portfolio = '/portfolio';
  static const contact = '/contact';
}

/// GetX page table — wires every route to its screen and (optional)
/// binding. Passed straight into `GetMaterialApp(getPages: ...)`.
class AppPages {
  AppPages._();

  static final pages = <GetPage>[
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.about,
      page: () => const AboutScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: Routes.services,
      page: () => const ServicesScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: Routes.portfolio,
      page: () => const PortfolioScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: Routes.contact,
      page: () => const ContactScreen(),
      binding: ContactBinding(),
      transition: Transition.rightToLeft,
    ),
  ];
}
