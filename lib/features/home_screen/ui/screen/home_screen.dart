import 'package:feta/features/group_team/ui/screen/group_team_app.dart';
import 'package:feta/features/home/ui/screens/home_app.dart';
import 'package:feta/features/profile/ui/screen/profile_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../store/ui/screen/store_app.dart';

class HomeScreen extends StatelessWidget {
  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
       navBarHeight: 80.h,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: false,
      hideNavigationBarWhenKeyboardShows: true,

      decoration: const NavBarDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            spreadRadius: 6.0,
            offset: Offset(1.0, 3.0), // changes position of shadow
          ),
        ],
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      activeColorSecondary: Colors.green,
      iconSize: 35,
      icon: const Icon(Icons.home),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      iconSize: 35,
      activeColorSecondary: Colors.green,
      icon: const Icon(CupertinoIcons.cart),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      iconSize: 35,
      activeColorSecondary: Colors.green,
      icon: const Icon(CupertinoIcons.group),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      iconSize: 35,
      activeColorSecondary: Colors.green,
      icon: const Icon(Icons.person_outline),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];
}

List<Widget> _buildScreens() {
  return [
    const HomeApp(),
    const StoreApp(),
    const GroupTeamApp(),
    const ProfileApp(),

  ];
}