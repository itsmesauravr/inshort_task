import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:inshort_task/domain/core/db/db.dart';
import 'package:inshort_task/domain/core/di/injection.dart';
import 'package:inshort_task/presentation/core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  await BooksMarkDb.ins.initHive();
  runApp(const AppWidget());
}
