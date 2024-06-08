import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/sizes/size_config.dart';
import '../../../../core/themes/app_pallete.dart';
import 'clipper.dart';

class CustomAnimatedIndicator extends StatelessWidget {
  const CustomAnimatedIndicator({
    super.key,
    required int currentIndex,
  }) : _currentIndex = currentIndex;

  final int _currentIndex;

  @override
  Widget build(BuildContext context) {
    AppSizes().iniSizes(context);
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 300),
      curve: Curves.decelerate,
      left: animatedConditionLeftValue(_currentIndex),
      child: Column(
        children: [
          // Top Side indicator
          Container(
            height: AppSizes.blockedSizeHorizontal * 1.0,
            width: AppSizes.blockedSizeHorizontal * 12,
            decoration: BoxDecoration(
              color: AppPallete.kSecondary,
              borderRadius: BorderRadius.circular(10),
            ),
          ),

          // Clipper;
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: AppSizes.blockedSizeHorizontal * 15,
              width: AppSizes.blockedSizeHorizontal * 12,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: gradient,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
