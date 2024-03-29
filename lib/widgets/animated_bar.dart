import 'package:flutter/material.dart';

import '../utils/colors_utils.dart';

class AnimatedBar extends StatelessWidget {
  const AnimatedBar({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(bottom: 2),
      height: 4,
      width: isActive ? 30 : 0,
      decoration: BoxDecoration(
        color: AppColors.fourthBlue,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
