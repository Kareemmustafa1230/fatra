import 'package:feta/features/videos/ui/widget/tap_item_video.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/model/category_video_response.dart';

class TabContainerVideo extends StatefulWidget {
  final List<CategoryVideoData> categoryVideoData;
  const TabContainerVideo({super.key, required this.categoryVideoData});
  @override
  _TabContainerState createState() => _TabContainerState();
}
class _TabContainerState extends State<TabContainerVideo> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.categoryVideoData.length, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 15.w),
          child: TabBar(
            controller: _tabController,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            indicatorColor: Colors.white,
            dividerColor: Colors.white,
            tabs: widget.categoryVideoData.map((dataCategoryVideo) => TabItemVideo(
              isSelected: _tabController.index == widget.categoryVideoData.indexOf(dataCategoryVideo),
              categoryVideoData: dataCategoryVideo,
            )).toList(),
          ),
        ),
        SizedBox(height: 25.h),
        // SizedBox(
        //   width: 330.w,
        //   height: 570.h,
        //   child: TabBarView(
        //     controller: _tabController,
        //     children: widget.categoryVideoData.map((dataCategory) => ItemsArticles(dataCategory: dataCategory)).toList(),
        //   ),
        // ),
      ],
    );
  }
}
