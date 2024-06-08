import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:team_viora/core/themes/app_pallete.dart';
import 'package:team_viora/core/utils/utils.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/sizes/size_config.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../widgets/custom_chip_tabs.dart';

class MerchPage extends StatefulWidget {
  const MerchPage({super.key});

  @override
  State<MerchPage> createState() => _MerchPageState();
}

class _MerchPageState extends State<MerchPage> {
  String _selectedChip = merchatTabs.first;

  // update the selected chip tap method
  void updateSelectedChip(String text) {
    setState(() {
      _selectedChip = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    AppSizes().iniSizes(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // AppBar
              const CustomAppBar(
                iconData: IconlyLight.bag,
                label: 'Merchant',
              ),

              CustomChipTab(
                onPressed: updateSelectedChip,
                selectedChip: _selectedChip,
                chipLists: merchatTabs,
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemBuilder: (context, index) => Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppPallete.kSecondary,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 0.1, color: AppPallete.kBlack),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: const Color.fromARGB(255, 55, 85, 19),
                      //     offset: Offset.fromDirection(1),
                      //     blurRadius: 0.8,
                      //   ),
                      // ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: SizedBox(
                            width: 100,
                            child: Image.asset(
                              'assets/images/pad.webp',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            buildPoppinText(
                              text: '\$5.6',
                              color: AppPallete.kBlack,
                              weight: FontWeight.w900,
                              size: 15,
                            ),
                            buildPoppinText(
                              text: 'Always',
                              color: AppPallete.kGrey,
                              size: 10,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        buildPoppinText(
                          text: 'Always Normal Sanita..',
                          color: AppPallete.kGrey,
                          size: 12,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

var merchatTabs = [
  'All products',
  'period cup',
  'Baby diaper',
  'Trainig pants',
];
