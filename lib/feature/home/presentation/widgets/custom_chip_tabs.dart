import 'package:flutter/material.dart';

import '../../../../core/themes/app_pallete.dart';
import '../../../../core/utils/utils.dart';

class CustomChipTab extends StatelessWidget {
  const CustomChipTab({
    super.key,
    required this.onPressed,
    required this.selectedChip,
    required this.chipLists,
  });

  final void Function(String) onPressed;
  final String selectedChip;
  final List<String> chipLists;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: chipLists
            .map(
              (e) => GestureDetector(
                onTap: () {
                  onPressed(e);
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                  padding: const EdgeInsets.all(5.0),
                  child: Chip(
                    label: buildPoppinText(
                      text: e,
                      size: 12,
                      color: AppPallete.kBlack,
                    ),
                    color: selectedChip == e
                        ? const WidgetStatePropertyAll(AppPallete.kOrange)
                        : null,
                    side: selectedChip == e
                        ? null
                        : const BorderSide(
                            color: AppPallete.kPrimary,
                            width: 0.5,
                          ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
