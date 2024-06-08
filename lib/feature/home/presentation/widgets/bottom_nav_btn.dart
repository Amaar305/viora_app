import 'package:flutter/material.dart';

import '../../../../core/sizes/size_config.dart';
import '../../../../core/themes/app_pallete.dart';

class BottomNavBtn extends StatelessWidget {
  const BottomNavBtn({
    super.key,
    required this.iconData,
    required this.index,
    required this.currentIndex,
    required this.onPressed,
  });

  final IconData iconData;
  final int index;
  final int currentIndex;
  final void Function(int) onPressed;
  @override
  Widget build(BuildContext context) {
    AppSizes().iniSizes(context);
    return InkWell(
      onTap: () => onPressed(index),
      child: Container(
        width: AppSizes.blockedSizeHorizontal * 13,
        height: AppSizes.blockedSizeHorizontal * 17,
        decoration: const BoxDecoration(
          color: AppPallete.kTransparent,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Black icon, as shadow
            if (currentIndex == index)
              Positioned(
                left: AppSizes.blockedSizeHorizontal * 3.5,
                bottom: AppSizes.blockedSizeHorizontal * 3.5,
                child: Icon(
                  iconData,
                  color: AppPallete.kBlack,
                  size: AppSizes.blockedSizeHorizontal * 6.5,
                ),
              )
            else
              Container(),

            // Main Icon
            AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: (currentIndex == index) ? 1 : 0.2,
              curve: Curves.easeIn,
              child: Icon(
                iconData,
                color: AppPallete.kSecondary,
                size: AppSizes.blockedSizeHorizontal * 6.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
