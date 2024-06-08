import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/sizes/size_config.dart';
import '../../../../core/themes/app_pallete.dart';

class CustomAnimatedCarouselIndicator extends StatelessWidget {
  const CustomAnimatedCarouselIndicator({
    super.key,
    required int carouselIndex,
    required this.carouselLength,
    this.onDotClicked,
  }) : _carouselIndex = carouselIndex;

  final int _carouselIndex;
  final int carouselLength;
  final void Function(int)? onDotClicked;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 50,
      right: 50,
      bottom: 10,
      child: Center(
        child: AnimatedSmoothIndicator(
          duration: const Duration(milliseconds: 300),
          activeIndex: _carouselIndex,
          count: carouselLength,
          onDotClicked: onDotClicked,
          effect: JumpingDotEffect(
            dotHeight: AppSizes.blockedSizeHorizontal * 3.5,
            dotWidth: AppSizes.blockedSizeHorizontal * 3.5,
            activeDotColor: AppPallete.kPrimary,
            dotColor: AppPallete.kSecondary,
          ),
        ),
      ),
    );
  }
}
