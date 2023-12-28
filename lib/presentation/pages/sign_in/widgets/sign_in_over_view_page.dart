import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inshort_task/application/auth/auth_bloc.dart';
import 'package:inshort_task/presentation/core/utils/app_color/app_color.dart';
import 'package:inshort_task/presentation/core/utils/app_padding/app_padding.dart';
import 'package:inshort_task/presentation/core/utils/app_sized_box/app_sized_box.dart';
import 'package:inshort_task/presentation/core/utils/app_text_style/app_text_style.dart';
import 'package:inshort_task/presentation/core/widgets/app_text_form_field/app_text_form_field.dart';
import 'package:inshort_task/presentation/pages/home/home_page.dart';

class SignInOverviewPage extends StatelessWidget {
  const SignInOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  serverError: (_) => 'Server Error',
                  invalidPassword: (_) => 'Invalid Password',
                  invalidEmail: (_) => 'Invalid Email',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid Email And Password Combination',
                ),
              ).show(context);
            },
            (_) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
        );
      },
      builder: (context, state) {
        return Padding(
          padding: kPaddingAll10,
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                autovalidateMode: state.showErrorMessages
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/svg/splash.svg',
                      height: 200,
                      width: 200,
                    ),
                    kHeight10,
                    Text(
                      'Welcome Back',
                      style: kTextStyleTitle,
                    ),
                    kHeight10,
                    AppTextFormField(
                      onChanged: (p0) {
                        context
                            .read<AuthBloc>()
                            .add(AuthEvent.emailChanged(p0));
                      },
                      validator: (_) =>
                          context.read<AuthBloc>().state.email.value.fold(
                                (f) => f.maybeMap(
                                  invalidEmail: (_) => 'Invalid Email',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                      hintText: 'Email',
                    ),
                    kHeight10,
                    AppTextFormField(
                      onChanged: (p0) {
                        context
                            .read<AuthBloc>()
                            .add(AuthEvent.passwordChanged(p0));
                      },
                      validator: (_) =>
                          context.read<AuthBloc>().state.password.value.fold(
                                (f) => f.maybeMap(
                                  invalidPassword: (_) => 'Short Password',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                      hintText: 'Password',
                    ),
                    kHeight15,
                    ElevatedButton(
                      onPressed: () {
                        context.read<AuthBloc>().add(
                              const AuthEvent
                                  .signInWithEmailAndPasswordPressed(),
                            );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kOnSecondaryColor,
                        minimumSize: Size(double.infinity, 50.spMax),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: state.isSubmitting
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CupertinoActivityIndicator(
                                color: kOnPrimaryColor,
                              ),
                            )
                          : Text(
                              'Sign In',
                              style: kTextStyleBody.copyWith(
                                color: kOnPrimaryColor,
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
