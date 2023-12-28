import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inshort_task/application/books_mark/books_mark_bloc.dart';
import 'package:inshort_task/presentation/core/utils/app_color/app_color.dart';
import 'package:inshort_task/presentation/core/utils/app_text_style/app_text_style.dart';
import 'package:inshort_task/presentation/pages/books_mark/books_mark_page.dart';
import 'package:inshort_task/presentation/pages/books_mark/widgets/book_mark_body.dart';

class BooksMarkOverviewPage extends StatelessWidget {
  const BooksMarkOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<BooksMarkBloc>().add(const BooksMarkEvent.getBooksMark());
    return SafeArea(
      child: BlocConsumer<BooksMarkBloc, BooksMarkState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: kOnPrimaryColor,
            body: BooksMarkBody(
              state: state.failureOrSuccess,
            ),
          );
        },
      ),
    );
  }
}
