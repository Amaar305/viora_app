import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/sizes/size_config.dart';
import '../../widgets/annoucement_widget.dart';
import '../../widgets/custom_animated_carousel_indicator_widget.dart';
import '../../widgets/custom_chip_tabs.dart';
import '../../widgets/custom_home_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late CarouselController carouselController;

  int _carouselIndex = 0;

  // Selected tab chip
  String _selectedChip = chipLists.first;

  void updateCarouselIndex(int index) {
    setState(() {
      _carouselIndex = index;
    });
  }

  // update the selected chip tap method
  void updateSelectedChip(String text) {
    setState(() {
      _selectedChip = text;
    });
  }

  // Upon clicking the dot indicator
  void onDotClicked(int index) {
    setState(() {
      carouselController.animateToPage(index);
    });
  }

  @override
  void initState() {
    super.initState();
    carouselController = CarouselController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: kPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // AppBar
                const CustomHomeAppBar(),
                const SizedBox(height: 20),

                // Announcement Carousel
                Stack(
                  children: [
                    CarouselSlider.builder(
                      carouselController: carouselController,
                      itemCount: announcement.length,
                      itemBuilder: (context, index, realIndex) =>
                          announcement[index],
                      options: CarouselOptions(
                        onPageChanged: (index, reason) {
                          updateCarouselIndex(index);
                        },
                        height: AppSizes.screenHeight * 0.18,
                        autoPlay: true,
                        reverse: true,
                        viewportFraction: 1,
                      ),
                    ),
                    CustomAnimatedCarouselIndicator(
                      carouselIndex: _carouselIndex,
                      carouselLength: announcement.length,
                      onDotClicked: onDotClicked,
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Chip tabs
                CustomChipTab(
                  onPressed: updateSelectedChip,
                  selectedChip: _selectedChip,
                  chipLists: chipLists,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

var announcement = [
  const AnnouncementWidget(title: 'Viora App'),
  const AnnouncementWidget(title: 'Annoucement'),
  const AnnouncementWidget(title: 'Viora Health'),
  const AnnouncementWidget(title: 'Tomorrow\'s Calender'),
];
