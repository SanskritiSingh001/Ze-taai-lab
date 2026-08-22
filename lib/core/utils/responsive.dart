import 'package:flutter/material.dart';

class Responsive {
  // ============================================================
  // BREAKPOINTS
  // ============================================================

  static const double mobile = 600;
  static const double tablet = 1024;

  // ============================================================
  // DEVICE TYPE
  // ============================================================

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < mobile;
  }

  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return width >= mobile && width < tablet;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= tablet;
  }

  // ============================================================
  // SCREEN WIDTH
  // ============================================================

  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // ============================================================
  // SCREEN HEIGHT
  // ============================================================

  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  // ============================================================
  // HORIZONTAL PADDING
  // ============================================================

  static double horizontalPadding(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width < mobile) {
      return 20;
    }

    if (width < tablet) {
      return 32;
    }

    return 80;
  }

  // ============================================================
  // SECTION PADDING
  // ============================================================

  static EdgeInsets sectionPadding(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width < mobile) {
      return const EdgeInsets.fromLTRB(
        20,
        40,
        20,
        30,
      );
    }

    if (width < tablet) {
      return const EdgeInsets.fromLTRB(
        32,
        55,
        32,
        40,
      );
    }

    return const EdgeInsets.fromLTRB(
      80,
      80,
      80,
      60,
    );
  }

  // ============================================================
  // PAGE TITLE SIZE
  // ============================================================

  static double pageTitleSize(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width < mobile) {
      return 30;
    }

    if (width < tablet) {
      return 38;
    }

    return 48;
  }

  // ============================================================
  // SECTION TITLE SIZE
  // ============================================================

  static double sectionTitleSize(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width < mobile) {
      return 28;
    }

    if (width < tablet) {
      return 32;
    }

    return 38;
  }

  // ============================================================
  // BODY TEXT SIZE
  // ============================================================

  static double bodyTextSize(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width < mobile) {
      return 15;
    }

    if (width < tablet) {
      return 16;
    }

    return 17;
  }

  // ============================================================
  // GRID COLUMNS
  // ============================================================

  static int gridColumns(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width < mobile) {
      return 1;
    }

    if (width < tablet) {
      return 2;
    }

    return 3;
  }

  // ============================================================
  // CARD WIDTH
  // ============================================================

  static double cardWidth(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width < mobile) {
      return width - 40;
    }

    if (width < tablet) {
      return (width - 76) / 2;
    }

    return (width - 196) / 3;
  }

  // ============================================================
  // HERO IMAGE HEIGHT
  // ============================================================

  static double heroImageHeight(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width < mobile) {
      return 260;
    }

    if (width < tablet) {
      return 350;
    }

    return 500;
  }
}