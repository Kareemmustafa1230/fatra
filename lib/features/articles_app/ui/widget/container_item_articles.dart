import 'package:cached_network_image/cached_network_image.dart';
import 'package:feta/core/theming/theme.dart';
import 'package:feta/features/articles_app/data/model/articles_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../screen/img_desc_category_screen.dart';

class ContainerItemArticles extends StatelessWidget {
  const ContainerItemArticles({super.key, required this.dataArticles});
  final DataArticles dataArticles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.h),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ImgDescCategoryScreen(
                image: dataArticles.img!,
                category: dataArticles.category!,
                desc: dataArticles.desc!,
              ),
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.only(top: 19.h, right: 17.w, left: 17.w, bottom: 11.h),
          height: 290.h,
          decoration: BoxDecoration(
            color: ThemeApp.whiteFB,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 25.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ThemeApp.orange00,
                    ),
                    child: Text(
                      'UX',
                      style: ThemeApp.font11white400Weight,
                    ),
                  ),
                  SizedBox(width: 6.w),
                  Text(
                    '${dataArticles.admin}',
                    style: ThemeApp.font14grey4F500Weight.copyWith(color: ThemeApp.black00, fontSize: 20.sp),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${dataArticles.title}', style: ThemeApp.font2black00600Weight),
                  SizedBox(width: 25.w),
                  CachedNetworkImage(
                    imageUrl: dataArticles.img!,
                    height: 100.h,
                    width: 100.w,
                    fit: BoxFit.cover,
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    placeholder: (context, url) => const SpinKitFadingCircle(color: Colors.green),
                    errorWidget: (context, url, error) => const Icon(Icons.error, size: 40),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${dataArticles.createdAt}",
                    style: ThemeApp.font2black00600Weight.copyWith(color: ThemeApp.lead91, fontWeight: FontWeight.w400),
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz_outlined))
                ],
              ),
              Text(
                '${dataArticles.desc}',
                style: ThemeApp.font12white400Weight.copyWith(color: ThemeApp.bronze5A),
              ),
            ],
          ),
        ),
      ),
    );
  }
}