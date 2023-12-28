import 'package:flutter/material.dart';
import 'package:inshort_task/presentation/pages/sign_in/widgets/sign_in_over_view_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SignInOverviewPage(),
    );
  }
}
