import 'package:flutter/material.dart';
import 'package:feta/core/theming/theme.dart';
import 'package:feta/features/articles_app/data/model/category_articles_response.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabItem extends StatelessWidget {
  final bool isSelected;
  final DataCategory dataCategory;

  const TabItem({super.key, required this.isSelected, required this.dataCategory});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.h),
      padding: const EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isSelected ? ThemeApp.green73 : ThemeApp.whiteTabFA,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        '${dataCategory.name}',
        style: isSelected
            ? ThemeApp.font16whiteFF400Weight
            : ThemeApp.font16gray99400Weight,
      ),
    );
  }
}
