import 'package:feta/core/di/dependency_injection.dart';
import 'package:feta/features/articles_app/ui/widget/tab_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../../home_screen/ui/widget/custom_app_bar.dart';
import '../../logic/cubit/category_articles_cubit.dart';
import '../../logic/cubit/category_articles_state.dart';

class Articles extends StatelessWidget {
   const Articles({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<CategoryArticlesCubit>()..emitCategoryArticlesStates(),
      child: Scaffold(
        backgroundColor: Colors.white,
          appBar: const CustomAppBar(
            title: 'مقالات',
          ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlocBuilder<CategoryArticlesCubit, CategoryArticlesState>(
                    builder: (context, state) {
                      if (state is Success) {
                        var dataCategories = state.data;
                        return TabContainer(dataCategories: dataCategories);
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
