import 'package:flutter/material.dart';

/// Centralized design tokens for the ZETA AI LABS marketing site.
///
/// Nothing here changes app behaviour — it only gives every screen a single
/// source of truth for colors, spacing, radii and type scale so the UI reads
/// as one deliberately designed product instead of a collection of screens.
class AppColors {
  AppColors._();

  // Primary surfaces
  static const Color ink = Color(0xFF0B0F0E); // deep black / hero bg
  static const Color charcoal = Color(0xFF111716); // dark surface
  static const Color charcoal2 = Color(0xFF171D1B); // dark surface, lighter
  static const Color white = Color(0xFFFFFFFF);
  static const Color offWhite = Color(0xFFF6F8F7); // light section bg

  // Accent — used sparingly and intentionally
  static const Color green700 = Color(0xFF2E7D32);
  static const Color green600 = Color(0xFF43A047);
  static const Color green400 = Color(0xFF66BB6A);

  // Text
  static const Color textPrimary = Color(0xFF1B1B1B);
  static const Color textMuted = Color(0xFF666666);
  static const Color textFaint = Color(0xFF8A8F8D);
  static const Color textOnDark = Color(0xFFF6F8F7);
  static const Color textOnDarkMuted = Color(0xB3F6F8F7); // 70% white

  // Structure
  static const Color border = Color(0xFFE6EAE7);
  static const Color borderOnDark = Color(0x1FFFFFFF); // 12% white
  static const Color cardSurface = Color(0xFFFFFFFF);

  static const LinearGradient accentGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [green600, green400],
  );
}

class AppSpacing {
  AppSpacing._();

  static const double xs = 6;
  static const double sm = 12;
  static const double md = 20;
  static const double lg = 32;
  static const double xl = 48;
  static const double xxl = 72;
}

class AppRadius {
  AppRadius._();

  static const double sm = 10;
  static const double md = 16;
  static const double lg = 22;
  static const double pill = 999;
}

/// Simple three-tier breakpoint system. Keep logic centralized so every
/// section reasons about screen size the same way.
class Responsive {
  Responsive._();

  static const double mobileMax = 599;
  static const double tabletMax = 1023;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= mobileMax;

  static bool isTablet(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return w > mobileMax && w <= tabletMax;
  }

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > tabletMax;

  /// Horizontal page padding that grows gracefully with viewport width.
  static double horizontalPadding(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    if (w <= mobileMax) return AppSpacing.md;
    if (w <= tabletMax) return AppSpacing.xl;
    return AppSpacing.xxl;
  }

  /// Max content width so text/cards never over-stretch on large desktops.
  static double contentMaxWidth(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    if (w > 1440) return 1240;
    return w;
  }
}

class AppText {
  AppText._();

  static const String fontFamily = 'Roboto'; // Flutter default, no new dep.

  static TextStyle eyebrow({Color color = AppColors.green700}) => TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.6,
    color: color,
  );

  static TextStyle heroTitle(BuildContext context) => TextStyle(
    fontSize: Responsive.isMobile(context) ? 38 : 64,
    height: 1.08,
    fontWeight: FontWeight.w800,
    letterSpacing: -1.2,
    color: AppColors.white,
  );

  static TextStyle sectionTitle(
      BuildContext context, {
        Color color = AppColors.textPrimary,
      }) =>
      TextStyle(
        fontSize: Responsive.isMobile(context) ? 28 : 38,
        fontWeight: FontWeight.w800,
        letterSpacing: -0.6,
        height: 1.15,
        color: color,
      );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    height: 1.6,
    fontWeight: FontWeight.w400,
    color: AppColors.textMuted,
  );

  static const TextStyle bodyOnDark = TextStyle(
    fontSize: 16,
    height: 1.6,
    fontWeight: FontWeight.w400,
    color: AppColors.textOnDarkMuted,
  );

  static const TextStyle cardTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  static const TextStyle button = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.2,
  );
}