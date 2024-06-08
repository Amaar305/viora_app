import 'package:flutter/material.dart';

import '../../../../core/themes/app_pallete.dart';
import '../../../../core/utils/utils.dart';

class AnnouncementWidget extends StatelessWidget {
  const AnnouncementWidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // margin: kPadding,
      decoration: BoxDecoration(
        color: AppPallete.kPrimary.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppPallete.kSecondary,
            offset: Offset.fromDirection(2),
            blurRadius: 1,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: buildPoppinText(
          text: title,
          weight: FontWeight.w800,
          color: AppPallete.kPrimary,
        ),
      ),
    );
  }
}
