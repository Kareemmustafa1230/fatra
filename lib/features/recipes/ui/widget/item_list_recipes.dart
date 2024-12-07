import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/theme.dart';
import '../../data/model/food_response.dart';
import '../screen/item_recipes.dart';

class ItemListRecipes extends StatelessWidget {
  const ItemListRecipes({super.key, required this.foodData});
 final FoodData foodData ;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ItemRecipes(
             // image: dataArticles.img!,
            ),
          ),
        );
        //context.pushNewScreen(Routes.itemRecipes);
      }, child:Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        color:ThemeApp.pink4C,
        border: Border.all(width: 1.w,color: ThemeApp.green73),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/pngfuel 6.png',width:90.w,height: 60.h,fit:BoxFit.fill),
          SizedBox(height: 17.h,),
          Text('${foodData.name}',style: ThemeApp.font14grey4F500Weight,),
        ],
      ),
    ),
    );
  }
}
