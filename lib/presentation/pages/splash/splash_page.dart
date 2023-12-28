import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inshort_task/application/splash/splash_bloc.dart';
import 'package:inshort_task/presentation/pages/splash/widgets/splash_over_view_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SplashBloc>().add(const SplashEvent.getSplash());
    return const SplashOverViewPage();
  }
}
