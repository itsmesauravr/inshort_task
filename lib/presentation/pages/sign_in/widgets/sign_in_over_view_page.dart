import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inshort_task/presentation/core/utils/app_padding/app_padding.dart';
import 'package:inshort_task/presentation/core/utils/app_sized_box/app_sized_box.dart';
import 'package:inshort_task/presentation/core/utils/app_text_style/app_text_style.dart';
import 'package:inshort_task/presentation/core/widgets/app_text_form_field/app_text_form_field.dart';
import 'package:inshort_task/presentation/pages/home/home_page.dart';

class SignInOverviewPage extends StatelessWidget {
  const SignInOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingAll10,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome Back',
                style: kTextStyleTitle,
              ),
              kHeight10,
              const AppTextFormField(
                hintText: 'Email',
              ),
              kHeight10,
              const AppTextFormField(
                hintText: 'Password',
              ),
              kHeight10,
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50.spMax),
                ),
                child: const Text('Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
