import 'package:another_flushbar/flushbar_helper.dart';
import 'package:another_transformer_page_view/another_transformer_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:inshort_task/application/books_mark/books_mark_bloc.dart';
import 'package:inshort_task/application/news/news_bloc.dart';
import 'package:inshort_task/infrastructure/books_mark/books_mark_dto.dart';
import 'package:inshort_task/infrastructure/news/news_dto.dart';
import 'package:inshort_task/presentation/core/utils/app_color/app_color.dart';
import 'package:inshort_task/presentation/core/utils/app_padding/app_padding.dart';
import 'package:inshort_task/presentation/core/utils/app_sized_box/app_sized_box.dart';
import 'package:inshort_task/presentation/core/utils/app_text_style/app_text_style.dart';
import 'package:inshort_task/presentation/pages/home/widgets/home_over_view_page.dart';

class HomeBody extends StatelessWidget {
  HomeBody({super.key, required this.state});

  final List<NewsData> state;
  final ValueNotifier<bool> _isAppBarVisible = ValueNotifier<bool>(false);
  final ValueNotifier<int> _indexNotifier = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            _isAppBarVisible.value = !_isAppBarVisible.value;
          },
          onHorizontalDragEnd: (details) {
            if (details.primaryVelocity! < 0) {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => NewsWebView(
                    url: state[_indexNotifier.value ?? 0].readMoreUrl,
                  ),
                ),
              );
            }
          },
          child: TransformerPageView(
            scrollDirection: Axis.vertical,
            onPageChanged: (index) async {
              _isAppBarVisible.value = false;
              _indexNotifier.value = index ?? 0;
            },
            itemCount: state.length,
            transformer: InshortsPageTransformer(),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: ImageWidget(
                      imageUrl: state[index].imageUrl,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: kPaddingAll20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state[index].title,
                            maxLines: 3,
                            style: kTextStyleHeadline.copyWith(
                              fontSize: 18.sp,
                            ),
                          ),
                          kHeight10,
                          Flexible(
                            child: Text(
                              state[index].content,
                              maxLines: 10,
                              style: kTextStyleBody.copyWith(
                                fontSize: 14.sp,
                                color: kOnSecondaryColor.withOpacity(0.5),
                              ),
                            ),
                          ),
                          kHeight10,
                          Text(
                            'Swipe left to read more',
                            maxLines: 1,
                            style: kTextStyleBody.copyWith(
                              fontSize: 10.sp,
                              color: kOnSecondaryColor.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        ValueListenableBuilder(
            valueListenable: _isAppBarVisible,
            builder: (context, value, child) {
              return AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                top: value ? 0 : -kToolbarHeight,
                left: 0,
                right: 0,
                child: AppBar(
                  toolbarHeight: kToolbarHeight,
                  backgroundColor: kOnPrimaryColor,
                  title: Text(
                    context
                            .read<BooksMarkBloc>()
                            .state
                            .headerTitle
                            .toString()
                            .substring(0, 1)
                            .toUpperCase() +
                        context
                            .read<BooksMarkBloc>()
                            .state
                            .headerTitle
                            .toString()
                            .substring(1),
                    style: kTextStyleTitle.copyWith(
                      fontSize: 20.sp,
                    ),
                  ),
                  centerTitle: true,
                  actions: [
                    IconButton(
                      onPressed: () {
                        FlushbarHelper.createInformation(
                          message: 'Coming Soon',
                          duration: const Duration(seconds: 3),
                        ).show(context);
                      },
                      icon: const Icon(
                        Icons.search,
                        color: kOnSecondaryColor,
                        size: 20,
                      ),
                    ),
                    PopupMenuButton(
                      color: kOnPrimaryColor,
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                            value: 'all',
                            child: Text(
                              'All',
                              style: kTextStyleBody.copyWith(
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            value: 'national',
                            child: Text(
                              'National',
                              style: kTextStyleBody.copyWith(
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            value: 'business',
                            child: Text(
                              'Business',
                              style: kTextStyleBody.copyWith(
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            value: 'sports',
                            child: Text(
                              'Sports',
                              style: kTextStyleBody.copyWith(
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            value: 'world',
                            child: Text(
                              'World',
                              style: kTextStyleBody.copyWith(
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            value: 'politics',
                            child: Text(
                              'Politics',
                              style: kTextStyleBody.copyWith(
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            value: 'technology',
                            child: Text(
                              'Technology',
                              style: kTextStyleBody.copyWith(
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            value: 'startup',
                            child: Text(
                              'Startup',
                              style: kTextStyleBody.copyWith(
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            value: 'entertainment',
                            child: Text(
                              'Entertainment',
                              style: kTextStyleBody.copyWith(
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            value: 'miscellaneous',
                            child: Text(
                              'Miscellaneous',
                              style: kTextStyleBody.copyWith(
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            value: 'hatke',
                            child: Text(
                              'Hatke',
                              style: kTextStyleBody.copyWith(
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            value: 'science',
                            child: Text(
                              'Science',
                              style: kTextStyleBody.copyWith(
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            value: 'automobile',
                            child: Text(
                              'Automobile',
                              style: kTextStyleBody.copyWith(
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ];
                      },
                      onSelected: (value) {
                        BlocProvider.of<NewsBloc>(context)
                            .add(NewsEvent.getNews(value.toString()));
                        context.read<BooksMarkBloc>().add(
                              BooksMarkEvent.changeHeaderTitle(
                                  value.toString()),
                            );
                      },
                    ),
                  ],
                ),
              );
            }),
        ValueListenableBuilder(
          valueListenable: _isAppBarVisible,
          builder: (context, value, child) {
            return AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              bottom: value ? 0 : -kToolbarHeight,
              left: 0,
              right: 0,
              child: Container(
                height: kToolbarHeight,
                decoration: BoxDecoration(
                  color: kOnPrimaryColor,
                  border: Border(
                    top: BorderSide(
                      color: kOnSecondaryColor.withOpacity(0.2),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.home,
                        color: kOnSecondaryColor,
                        size: 20,
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        final box =
                            await Hive.openBox<BooksMarkDto>('booksMark');
                        await box.clear();
                      },
                      icon: const Icon(
                        Icons.share,
                        color: kOnSecondaryColor,
                        size: 20,
                      ),
                    ),
                    BlocBuilder<BooksMarkBloc, BooksMarkState>(
                      builder: (context, state1) {
                        context.read<BooksMarkBloc>().add(
                            BooksMarkEvent.isBookMarked(
                                state[_indexNotifier.value ?? 0].title));
                        return IconButton(
                          onPressed: () {
                            context.read<BooksMarkBloc>().add(
                                  BooksMarkEvent.addRemoveBooksMark(
                                    BooksMarkDto(
                                      author: state[_indexNotifier.value ?? 0]
                                          .author,
                                      date:
                                          state[_indexNotifier.value ?? 0].date,
                                      id: state[_indexNotifier.value ?? 0].id,
                                      time:
                                          state[_indexNotifier.value ?? 0].time,
                                      title: state[_indexNotifier.value ?? 0]
                                          .title,
                                      url: state[_indexNotifier.value ?? 0].url,
                                      content: state[_indexNotifier.value ?? 0]
                                          .content,
                                      imageUrl: state[_indexNotifier.value ?? 0]
                                          .imageUrl,
                                      readMoreUrl:
                                          state[_indexNotifier.value ?? 0]
                                              .readMoreUrl,
                                    ),
                                  ),
                                );
                            state1.isBookMarked
                                ? FlushbarHelper.createInformation(
                                    message: 'Remove from Bookmarks',
                                    duration: const Duration(seconds: 1),
                                  ).show(context)
                                : FlushbarHelper.createInformation(
                                    message: 'Added to Bookmarks',
                                    duration: const Duration(seconds: 1),
                                  ).show(context);
                          },
                          icon: Icon(
                            state1.isBookMarked
                                ? Icons.bookmark
                                : Icons.bookmark_border,
                            color: kOnSecondaryColor,
                            size: 20,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
