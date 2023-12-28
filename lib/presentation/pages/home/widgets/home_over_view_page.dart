import 'dart:math' as math;
import 'package:another_flushbar/flushbar.dart';
import 'package:another_transformer_page_view/another_transformer_page_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inshort_task/application/news/news_bloc.dart';
import 'package:inshort_task/domain/core/di/injection.dart';
import 'package:inshort_task/presentation/core/utils/app_color/app_color.dart';
import 'package:inshort_task/presentation/core/utils/app_sized_box/app_sized_box.dart';
import 'package:inshort_task/presentation/core/utils/app_text_style/app_text_style.dart';
import 'package:inshort_task/presentation/pages/books_mark/books_mark_page.dart';
import 'package:inshort_task/presentation/pages/home/widgets/home_body.dart';
import 'package:inshort_task/presentation/pages/sign_in/sign_in_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeOverviewPage extends StatelessWidget {
  const HomeOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsBloc, NewsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final prefs = getIt<SharedPreferences>();
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarColor: Colors.transparent,
            systemNavigationBarIconBrightness: Brightness.dark,
          ),
          child: SafeArea(
            child: Scaffold(
              drawer: Drawer(
                width: 250.w,
                backgroundColor: kOnPrimaryColor,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    DrawerHeader(
                      decoration: BoxDecoration(
                        color: kOnSecondaryColor.withOpacity(0.1),
                      ),
                      child: Column(
                        children: [
                          kHeight10,
                          CircleAvatar(
                            radius: 35.sp,
                            backgroundColor: kOnPrimaryColor,
                            backgroundImage: const AssetImage(
                              'assets/png/profile.png',
                            ),
                          ),
                          kHeight10,
                          Text(
                            prefs.getString('email') ?? '',
                            style: kTextStyleBody.copyWith(
                              fontSize: 14,
                              color: kOnSecondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const BooksMarkPage(),
                          ),
                        );
                      },
                      leading: const Icon(
                        Icons.bookmark_border,
                        color: kOnSecondaryColor,
                        size: 20,
                      ),
                      title: Text(
                        'Bookmarks',
                        style: kTextStyleBody.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: kOnSecondaryColor,
                        size: 15.sp,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Flushbar(
                          message: 'Coming Soon',
                          duration: const Duration(seconds: 3),
                        ).show(context);
                      },
                      leading: const Icon(
                        Icons.settings,
                        color: kOnSecondaryColor,
                        size: 20,
                      ),
                      title: Text(
                        'Settings',
                        style: kTextStyleBody.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: kOnSecondaryColor,
                        size: 15.sp,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Flushbar(
                          message: 'Coming Soon',
                          duration: const Duration(seconds: 3),
                        ).show(context);
                      },
                      leading: const Icon(
                        Icons.info_outline,
                        color: kOnSecondaryColor,
                        size: 20,
                      ),
                      title: Text(
                        'About',
                        style: kTextStyleBody.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: kOnSecondaryColor,
                        size: 15.sp,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Flushbar(
                          message: 'Coming Soon',
                          duration: const Duration(seconds: 3),
                        ).show(context);
                      },
                      leading: const Icon(
                        Icons.share,
                        color: kOnSecondaryColor,
                        size: 20,
                      ),
                      title: Text(
                        'Share',
                        style: kTextStyleBody.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: kOnSecondaryColor,
                        size: 15.sp,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Flushbar(
                          message: 'Coming Soon',
                          duration: const Duration(seconds: 3),
                        ).show(context);
                      },
                      leading: const Icon(
                        Icons.star_border,
                        color: kOnSecondaryColor,
                        size: 20,
                      ),
                      title: Text(
                        'Rate Us',
                        style: kTextStyleBody.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: kOnSecondaryColor,
                        size: 15.sp,
                      ),
                    ),
                    ListTile(
                      onTap: () async {
                        prefs.clear();
                        await Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const SignInPage(),
                          ),
                        );
                      },
                      leading: const Icon(
                        Icons.logout,
                        color: kOnSecondaryColor,
                        size: 20,
                      ),
                      title: Text(
                        'Logout',
                        style: kTextStyleBody.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: kOnSecondaryColor,
                        size: 15.sp,
                      ),
                    ),
                  ],
                ),
              ),
              backgroundColor: kOnPrimaryColor,
              body: state.maybeMap(
                orElse: () => const SizedBox.shrink(),
                initial: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
                loadInProgress: (_) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircularProgressIndicator(),
                      kHeight10,
                      Text(
                        'Loading...',
                        style: kTextStyleBody.copyWith(
                          fontSize: 14,
                          color: kOnSecondaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                loadSuccess: (state) {
                  return HomeBody(state: state.newsData);
                },
                loadFailure: (_) => const Center(
                  child: Text('Failed to load news'),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class InshortsPageTransformer extends PageTransformer {
  @override
  Widget transform(Widget child, TransformInfo info) {
    final position = info.position ?? 0;
    final rotation = _calculateRotation(position);
    final scale = _calculateScale(position);

    return _applyCommonTransform(child, rotation, scale);
  }

  double _calculateRotation(double position) {
    return position * 0;
  }

  double _calculateScale(double position) {
    return math.max(0.8, 1 - position.abs());
  }

  Widget _applyCommonTransform(Widget child, double rotation, double scale) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateY(scale > 0 ? rotation : -rotation)
        ..scale(scale),
      alignment: Alignment.center,
      child: child,
    );
  }
}

class ImageWidget extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final double? width;
  const ImageWidget({Key? key, required this.imageUrl, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height,
      width: width,
      imageUrl: imageUrl,
      fit: BoxFit.cover,
      placeholder: (BuildContext context, String url) => Center(
          child: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(color: kOnPrimaryColor),
      )),
      errorWidget: (BuildContext context, String url, dynamic error) => Center(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: kPrimaryLightColor,
            ),
            child: const Icon(
              Icons.error,
              color: kOnSecondaryColor,
              size: 50,
            )),
      ),
    );
  }
}

class NewsWebView extends StatelessWidget {
  NewsWebView({super.key, required this.url});

  final String url;
  final ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(kOnPrimaryColor)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {},
          onPageStarted: (String url) {
            isLoading.value = true;
          },
          onPageFinished: (String url) {
            isLoading.value = false;
          },
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(url));
    return Scaffold(
      backgroundColor: kOnPrimaryColor,
      appBar: AppBar(
        toolbarHeight: 35.h,
        backgroundColor: kOnPrimaryColor,
        leading: IconButton(
          onPressed: () {
            controller.canGoBack().then((value) {
              if (value) {
                controller.clearCache();
                controller.goBack();
              } else {
                controller.clearCache();
                Navigator.pop(context);
              }
            });
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: kOnSecondaryColor,
            size: 20.sp,
          ),
        ),
      ),
      body: Stack(
        children: [
          WebViewWidget(
            controller: controller,
          ),
          ValueListenableBuilder<bool>(
            valueListenable: isLoading,
            builder: (context, value, child) {
              return value
                  ? const LinearProgressIndicator(
                      minHeight: 2,
                      backgroundColor: kOnPrimaryColor,
                      color: kPrimaryColor,
                    )
                  : const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}
