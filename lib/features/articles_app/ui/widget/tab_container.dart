import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/model/category_articles_response.dart';
import 'item_articles.dart';
import 'tap_item.dart';

class TabContainer extends StatefulWidget {
  final List<DataCategory> dataCategories;
  const TabContainer({super.key, required this.dataCategories});
  @override
  _TabContainerState createState() => _TabContainerState();
}
class _TabContainerState extends State<TabContainer> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.dataCategories.length, vsync: this);
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
            tabs: widget.dataCategories.map((dataCategory) => TabItem(
              isSelected: _tabController.index == widget.dataCategories.indexOf(dataCategory),
              dataCategory: dataCategory,
            )).toList(),
          ),
        ),
        SizedBox(height: 25.h),
        SizedBox(
          width: 330.w,
          height: 570.h,
          child: TabBarView(
            controller: _tabController,
            children: widget.dataCategories.map((dataCategory) => ItemsArticles(dataCategory: dataCategory)).toList(),
          ),
        ),
      ],
    );
  }
}
