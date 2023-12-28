import 'package:another_flushbar/flushbar_helper.dart';
import 'package:another_transformer_page_view/another_transformer_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inshort_task/application/books_mark/books_mark_bloc.dart';
import 'package:inshort_task/infrastructure/books_mark/books_mark_dto.dart';
import 'package:inshort_task/presentation/core/utils/app_color/app_color.dart';
import 'package:inshort_task/presentation/core/utils/app_padding/app_padding.dart';
import 'package:inshort_task/presentation/core/utils/app_sized_box/app_sized_box.dart';
import 'package:inshort_task/presentation/core/utils/app_text_style/app_text_style.dart';
import 'package:inshort_task/presentation/pages/home/widgets/home_over_view_page.dart';

class BooksMarkBody extends StatelessWidget {
  BooksMarkBody({super.key, required this.state});

  final List<BooksMarkDto> state;
  final ValueNotifier<bool> _isAppBarVisible = ValueNotifier<bool>(false);
  final ValueNotifier<bool> _isBooksMarked = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    int? indexNotifier;
    return state.isEmpty
        ? Center(
            child: Text(
              'No Bookmarks',
              style: kTextStyleBody.copyWith(
                fontSize: 14,
              ),
            ),
          )
        : Stack(
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
                          url: state[indexNotifier ?? 0].readMoreUrl,
                        ),
                      ),
                    );
                  }
                },
                child: TransformerPageView(
                  scrollDirection: Axis.vertical,
                  onPageChanged: (index) {
                    _isAppBarVisible.value = false;
                  },
                  itemCount: state.length,
                  transformer: InshortsPageTransformer(),
                  itemBuilder: (context, index) {
                    indexNotifier = index;
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
                          'Bookmarks',
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
                        ],
                      ),
                    );
                  }),
              ValueListenableBuilder(
                valueListenable: _isAppBarVisible,
                builder: (context, value, child) {
                  return AnimatedPositioned(
                    duration: const Duration(milliseconds: 300),
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
                            onPressed: () async {},
                            icon: const Icon(
                              Icons.share,
                              color: kOnSecondaryColor,
                              size: 20,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              context.read<BooksMarkBloc>().add(
                                  BooksMarkEvent.getRemoveBooksMark(
                                      state[indexNotifier ?? 0].title));
                              context
                                  .read<BooksMarkBloc>()
                                  .add(const BooksMarkEvent.getBooksMark());
                            },
                            icon: const Icon(
                              Icons.bookmark,
                              color: kOnSecondaryColor,
                              size: 20,
                            ),
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
