import 'package:flutter/material.dart';

import '../entry_point.dart';
import 'dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreen;
  final Widget zeroScreenSize;
  final Widget tabletScreen;
  final Widget desktopScreen;
  final Widget largeScreen;
  const ResponsiveLayout({
    Key? key,
    required this.mobileScreen,
    required this.zeroScreenSize,
    required this.tabletScreen,
    required this.desktopScreen,
    required this.largeScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileScreenSize) {
          return const EntryPoint();
        } else if (constraints.maxWidth < tabletScreenSize) {
          return tabletScreen;
        } else if (constraints.maxWidth < desktopScreenSize) {
          return desktopScreen;
        } else {
          return largeScreen;
        }
      },
    );
  }
}
