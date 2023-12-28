import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inshort_task/application/splash/splash_bloc.dart';
import 'package:inshort_task/presentation/pages/home/home_page.dart';
import 'package:inshort_task/presentation/pages/sign_in/sign_in_page.dart';

class SplashOverViewPage extends StatelessWidget {
  const SplashOverViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashBloc, SplashState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          loadingFailure: (_) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const SignInPage(),
              ),
            );
          },
          loadingSuccess: (_) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: SvgPicture.asset(
              'assets/svg/splash.svg',
              height: 200,
              width: 200,
            )
          ),
        );
      },
    );
  }
}
