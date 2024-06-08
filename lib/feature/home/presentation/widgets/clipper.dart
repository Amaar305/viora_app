import 'package:flutter/material.dart';
import 'package:team_viora/core/sizes/size_config.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(AppSizes.blockedSizeHorizontal * 3.0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width - AppSizes.blockedSizeHorizontal * 3, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
