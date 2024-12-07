import 'package:feta/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/theme.dart';

class AppbarSignInUp extends StatelessWidget {
  const AppbarSignInUp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(onPressed: (){context.pop();}, icon: const Icon(Icons.arrow_back_ios,color: ThemeApp.whiteFF,size: 24,)),
      elevation: 0,
      backgroundColor: const Color(0xFF53B97C),
    );
  }
}
