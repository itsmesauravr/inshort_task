import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inshort_task/application/auth/auth_bloc.dart';
import 'package:inshort_task/application/books_mark/books_mark_bloc.dart';
import 'package:inshort_task/application/news/news_bloc.dart';
import 'package:inshort_task/application/splash/splash_bloc.dart';
import 'package:inshort_task/domain/core/di/injection.dart';
import 'package:inshort_task/presentation/pages/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SplashBloc()),
        BlocProvider(create: (context) => AuthBloc()),
        BlocProvider(
            create: (context) =>
                getIt<NewsBloc>()..add(const NewsEvent.getNews('national'))),
        BlocProvider(create: (context) => getIt<BooksMarkBloc>()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 640),
        builder: (context, child) => const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashPage(),
        ),
      ),
    );
  }
}
