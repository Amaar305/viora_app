import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../core/sizes/size_config.dart';
import '../../../../core/themes/app_pallete.dart';
import '../widgets/bottom_nav_btn.dart';
import '../widgets/custom_animated_indicator.dart';
import 'calender/calender_screen.dart';
import 'home/home_page.dart';
import 'merch/merch_page.dart';
import 'profile/profile_page.dart';
import 'search/search_page.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  int _currentIndex = 0;
  late final PageController _pageController;

  void updateIndex(int index) {
    setState(() {
      _currentIndex = index;
      animateToNextPage(index);
    });
  }

  void animateToNextPage(int page) {
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.decelerate,
    );
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppSizes().iniSizes(context);
    return Scaffold(
      body: Stack(
        children: [
          // Pages to show
          Positioned.fill(
            child: PageView(
              controller: _pageController,
              onPageChanged: (value) => setState(() {
                _currentIndex = value;
              }),
              children: const [
                HomePage(),
                SearchPage(),
                CalenderScreen(),
                MerchPage(),
                ProfilePage(),
              ],
            ),
          ),

          // Bottom
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: _buildBottomNavBar(),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavBar() {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppSizes.blockedSizeHorizontal * 4.5,
        0,
        AppSizes.blockedSizeHorizontal * 4.5,
        70,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(30),
        elevation: 30,
        color: AppPallete.kTransparent,
        child: Container(
          width: AppSizes.screenWidth,
          height: AppSizes.blockedSizeHorizontal * 18,
          decoration: BoxDecoration(
            color: AppPallete.kPrimary,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(
            children: [
              // List of bottom navigation bar icons
              Positioned(
                bottom: 0,
                top: 0,
                left: AppSizes.blockedSizeHorizontal * 3,
                right: AppSizes.blockedSizeHorizontal * 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BottomNavBtn(
                      iconData: IconlyLight.home,
                      index: 0,
                      currentIndex: _currentIndex,
                      onPressed: updateIndex,
                    ),
                    BottomNavBtn(
                      iconData: IconlyLight.search,
                      index: 1,
                      currentIndex: _currentIndex,
                      onPressed: updateIndex,
                    ),
                    BottomNavBtn(
                      iconData: IconlyLight.calendar,
                      index: 2,
                      currentIndex: _currentIndex,
                      onPressed: updateIndex,
                    ),
                    BottomNavBtn(
                      iconData: IconlyLight.category,
                      index: 3,
                      currentIndex: _currentIndex,
                      onPressed: updateIndex,
                    ),
                    BottomNavBtn(
                      iconData: IconlyLight.profile,
                      index: 4,
                      currentIndex: _currentIndex,
                      onPressed: updateIndex,
                    ),
                  ],
                ),
              ),

              // Animated indicator
              CustomAnimatedIndicator(currentIndex: _currentIndex)
            ],
          ),
        ),
      ),
    );
  }
}
