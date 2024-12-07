import 'package:cached_network_image/cached_network_image.dart';
import 'package:feta/core/theming/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ImgDescCategoryScreen extends StatelessWidget {
  const ImgDescCategoryScreen({super.key, required this.image, required this.category, required this.desc});
  final String image;
  final String category;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              CachedNetworkImage(
                imageUrl: image,
                height: 478.h,
                width: double.infinity,
                fit: BoxFit.cover,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                placeholder: (context, url) => const SpinKitFadingCircle(color: Colors.green),
                errorWidget: (context, url, error) => const Icon(Icons.error, size: 40),
              ),
              Positioned(
                top: 62.h,
                left: 15.w,
                child: IconButton(onPressed: (){ Navigator.of(context).pop();}, icon: const Icon(Icons.arrow_back_ios_new,color: ThemeApp.blackIconMenu23,),
              ),
              ),
            ],
          ),
          SizedBox(height: 31.h),
          Text(
            category,
            style: ThemeApp.font20black00600Weight,
          ),
          SizedBox(height: 24.h),
          Padding(padding:EdgeInsets.only(left: 26.w,right: 22.w) ,
          child:Text(desc,
            style: ThemeApp.font14grey4F500Weight.copyWith(color: ThemeApp.black00,fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          ),
        ],
      ),
    );
  }
}
