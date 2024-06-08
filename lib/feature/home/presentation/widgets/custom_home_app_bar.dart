import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../core/sizes/size_config.dart';
import '../../../../core/themes/app_pallete.dart';
import '../../../../core/utils/utils.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                buildPoppinText(
                  text: 'Location',
                  size: 12,
                  weight: FontWeight.w300,
                ),
                const SizedBox(width: 5),
                Icon(
                  IconlyLight.location,
                  color: AppPallete.kPrimary,
                  size: AppSizes.blockedSizeHorizontal * 3,
                ),
              ],
            ),
            buildPoppinText(
              text: 'Kano, Nigeria',
              size: 13,
              weight: FontWeight.w600,
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            IconlyLight.notification,
            color: AppPallete.kPrimary,
            size: AppSizes.blockedSizeHorizontal * 5.5,
          ),
        )
      ],
    );
  }
}
