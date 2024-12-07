import 'package:flutter/material.dart';
import 'package:feta/core/theming/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/model/category_video_response.dart';

class TabItemVideo extends StatelessWidget {
  final bool isSelected;
  final CategoryVideoData categoryVideoData;

  const TabItemVideo({super.key, required this.isSelected, required this.categoryVideoData});

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
        '${categoryVideoData.name}',
        style: isSelected
            ? ThemeApp.font16whiteFF400Weight
            : ThemeApp.font16gray99400Weight,
      ),
    );
  }
}
