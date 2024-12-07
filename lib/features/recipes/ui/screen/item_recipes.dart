import 'package:feta/core/theming/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../home_screen/ui/widget/custom_app_bar.dart';

class ItemRecipes extends StatelessWidget {
  const ItemRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'سلطة خضراء',
      ),
      body: Padding(padding:EdgeInsets.only(right: 28.w,top: 34.h),
       child:Directionality(
         textDirection: TextDirection.rtl,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
         children: [
         Text('المكوّنات:',style: ThemeApp.font15black30600Weight,),
          SizedBox(height: 15.h),
          Text(
            'حبة من كلٍّ من: الطماطم، والخيار، والفلفل الرومي الأخضر، والفلفل الرومي الأصفر، والفلفل الرومي الأحمر\nثلاث ملاعق طعام من زيت الزيتون.\nفلفل أسود. ملعقة صغيرة من الملح.\nملعقة صغيرة من الكمون',
            style:ThemeApp.font12darkGra66500Weight.copyWith(fontSize: 13.sp,height:2.h),
          ),
          SizedBox(height: 35.h),
          Text('طريقة التحضير:',style: ThemeApp.font15black30600Weight,),
          SizedBox(height: 15.h),
          Text(
          'تقطيع الطماطم إلى جوانح وتقطيع كلّ من الخيار، والكرفس، والبصل الأخضر، والفلفل الرومي بأنواعه الثلاثة إلى شرائح. '
              'خلط عصير الليمون، وزيت السمسم، وزيت الزيتون، والفلفل، والملح، والكمون لنحصل على التتبيلة. '
              'خلط جميع الخضار مع أوراق السلطة الخضراء والفطر لنحصل على السلطة. '
              'خلط السلطة مع التتبيلة ثمّ وضعها في وعاء التقديم.',
            style:ThemeApp.font12darkGra66500Weight.copyWith(fontSize: 13.sp,height:2.h),
          ),
         ],
       ),
      ),
     ),
    );
  }
}
