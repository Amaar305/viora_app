import 'package:flutter/material.dart';

import '../sizes/size_config.dart';
import '../themes/app_pallete.dart';
import '../utils/utils.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.label,
    required this.iconData,
    this.onPressed,
  });

  final String label;
  final IconData iconData;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildPoppinText(text: label, weight: FontWeight.w600, size: 14),
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            iconData,
            color: AppPallete.kPrimary,
            size: AppSizes.blockedSizeHorizontal * 5.5,
          ),
        ),
      ],
    );
  }
}
