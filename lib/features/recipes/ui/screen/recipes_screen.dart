import 'package:feta/core/theming/theme.dart';
import 'package:feta/features/recipes/logic/cubit/food_cubit.dart';
import 'package:feta/features/recipes/logic/cubit/food_state.dart';
import 'package:feta/features/recipes/ui/widget/item_food.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../home_screen/ui/widget/custom_app_bar.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      getIt<FoodCubit>()..emitFoodStates(),
      child: Scaffold(
        appBar: const CustomAppBar(
          title: 'الوصفات',
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 37.h),
                Text(
                  'وصفات لأطباق السلطة:',
                  style: ThemeApp.font20black00600Weight.copyWith(
                      fontSize: 16.sp),
                ),
                SizedBox(height: 45.h),
                BlocBuilder<FoodCubit, FoodState>(
                  builder: (context, state) {
                    if (state is Success) {
                      return  ItemFood(foodData:state.data);
                    }
                    if (state is Loading) {
                      return  Center(
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height:200.h),
                            const SpinKitFadingCircle(color: Colors.green),
                          ],
                        ),
                      );
                    }
                    return  const Center(
                      heightFactor: BorderSide.strokeAlignOutside,
                      child:  SpinKitFadingCircle(
                        color: Colors.green,
                        size: 50,
                      ),
                    );
                  },
                ),
               //SizedBox(height: 25.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
