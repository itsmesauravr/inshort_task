// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

import '../../../application/books_mark/books_mark_bloc.dart' as _i9;
import '../../../application/news/news_bloc.dart' as _i7;
import '../../../infrastructure/books_mark/books_mark_repository.dart' as _i4;
import '../../../infrastructure/core/app_injection/app_injection.dart' as _i10;
import '../../../infrastructure/news/news_repository.dart' as _i6;
import '../../books_mark/i_books_mark_repository.dart' as _i3;
import '../../news/i_news_repository.dart' as _i5;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appInjectableModule = _$AppInjectableModule();
  gh.lazySingleton<_i3.IBooksMarkRepository>(() => _i4.BooksMarkRepository());
  gh.lazySingleton<_i5.INewsRepository>(() => _i6.NewsRepository());
  gh.factory<_i7.NewsBloc>(() => _i7.NewsBloc(gh<_i5.INewsRepository>()));
  await gh.factoryAsync<_i8.SharedPreferences>(
    () => appInjectableModule.sharedPreferences,
    preResolve: true,
  );
  gh.factory<_i9.BooksMarkBloc>(
      () => _i9.BooksMarkBloc(gh<_i3.IBooksMarkRepository>()));
  return getIt;
}

class _$AppInjectableModule extends _i10.AppInjectableModule {}
