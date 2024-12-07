import 'package:feta/core/helpers/extensions.dart';
import 'package:feta/features/fat_measurement/ui/widget/text_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/theme.dart';

class RowTextType extends StatelessWidget {
  const RowTextType({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextContainer(onTap: (){context.pushNamed(Routes.womanFat);}, value1: 40, value2: 80, textStyle: ThemeApp.font16whiteFF400Weight, text: 'مرأة', value3: 8, containerColor: ThemeApp.green73,),
        SizedBox(width: 60.w),
        TextContainer(onTap: (){context.pushNamed(Routes.manFat);}, value1: 40, value2: 80, textStyle: ThemeApp.font16whiteFF400Weight, text: 'رجل', value3: 8, containerColor: ThemeApp.green73,)
      ],
    );
  }
}
