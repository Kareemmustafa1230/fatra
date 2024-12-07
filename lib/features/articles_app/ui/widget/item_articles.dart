import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../data/model/category_articles_response.dart';
import '../../logic/cubit/articles_cubit.dart';
import '../../logic/cubit/articles_state.dart';
import 'container_item_articles.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ItemsArticles extends StatelessWidget {
  final DataCategory dataCategory;

  const ItemsArticles({super.key, required this.dataCategory});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ArticlesCubit>()..emitArticlesStates(dataCategory.id!),
      child: BlocBuilder<ArticlesCubit, ArticlesState>(
        builder: (context, state) {
          if (state is Loading) {
            return  const Center(
                child:  SpinKitFadingCircle(
                  color: Colors.green,
                  size: 60,
                ),
            );

          } else if (state is Success) {
            var dataArticles = state.data;
            return AnimationLimiter(
              child: ListView.builder(
                itemCount: dataArticles.length,
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
                        child: ContainerItemArticles(dataArticles: dataArticles[index]),
                      ),
                    ),
                  );
                },
              ),
            );
          } else {
            return const Center(
                child:  SpinKitFadingCircle(
                color: Colors.green,
                  size: 60,
            ),
            );
          }
        },
      ),
    );
  }
}
