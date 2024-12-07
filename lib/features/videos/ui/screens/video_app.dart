import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../home_screen/ui/widget/custom_app_bar.dart';
import '../../logic/cubit/category_video_cubit.dart';
import '../../logic/cubit/category_video_state.dart';
import '../widget/tab_container_video.dart';

class VideoApp extends StatelessWidget {
  const VideoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
      getIt<CategoryVideoCubit>()..emitCategoryVideoStates(),
    child: Scaffold(
      backgroundColor: Colors.white,
        appBar: const CustomAppBar(
          title: 'مقاطع فيديو',
        ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocBuilder<CategoryVideoCubit, CategoryVideoState>(
                  builder: (context, state) {
                    if (state is Success) {
                      var categoryVideoData = state.data;
                      return TabContainerVideo(categoryVideoData: categoryVideoData);
                    }
                    if (state is Loading) {
                      return const Center(
                        child:  SpinKitFadingCircle(color: Colors.green),
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
              ],
            ),
          ],
        ),
      ),
    ),
    );
  }
}
