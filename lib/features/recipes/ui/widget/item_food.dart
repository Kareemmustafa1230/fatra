import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../../data/model/food_response.dart';
import 'item_list_recipes.dart';

class ItemFood extends StatelessWidget {
  const ItemFood({super.key, required this.foodData});
  final List<FoodData> foodData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 37.w,),
        child: AnimationLimiter(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 22.w,
              mainAxisSpacing: 24.h,
              childAspectRatio: 134.w / 144.h,
            ),
            itemBuilder: (context, index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 100),
                delay: const Duration(milliseconds: 100),
                child: SlideAnimation(
                  duration: const Duration(milliseconds: 2500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  horizontalOffset: 30,
                  verticalOffset: 300.0,
                  child: FadeInAnimation(
                    duration: const Duration(milliseconds: 3000),
                    curve: Curves.fastLinearToSlowEaseIn,
                    child: ItemListRecipes(foodData: foodData[index]),
                  ),
                ),
              );
            },
            itemCount: foodData.length,
          ),
        ),
      ),
    );
  }
}
