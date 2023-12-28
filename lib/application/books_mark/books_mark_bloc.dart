import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:inshort_task/domain/books_mark/books_mark_failure.dart';
import 'package:inshort_task/domain/books_mark/i_books_mark_repository.dart';
import 'package:inshort_task/domain/news/news_failiure.dart';
import 'package:inshort_task/infrastructure/books_mark/books_mark_dto.dart';
import 'package:inshort_task/infrastructure/news/news_dto.dart';

part 'books_mark_event.dart';
part 'books_mark_state.dart';
part 'books_mark_bloc.freezed.dart';

@injectable
class BooksMarkBloc extends Bloc<BooksMarkEvent, BooksMarkState> {
  final IBooksMarkRepository _booksMarkRepository;
  BooksMarkBloc(this._booksMarkRepository) : super(BooksMarkState.initial()) {
    on<_ChangeHeaderTitle>((event, emit) => _onChangeHeaderTitle(event, emit));
    on<_AddRemoveBooksMark>((event, emit) => _onAddRemoveBooksMark(event, emit));
    on<_GetBooksMark>((event, emit) => _onGetBooksMark(event, emit));
    on<_IsBookMarked>((event, emit) => _onIsBookMarked(event, emit));
    on<_GetRemoveBooksMark>(
        (event, emit) => _onGetRemoveBooksMark(event, emit));
  }
  _onChangeHeaderTitle(
      _ChangeHeaderTitle event, Emitter<BooksMarkState> emit) async {
    emit(state.copyWith(headerTitle: event.title));
  }

  _onAddRemoveBooksMark(
      _AddRemoveBooksMark event, Emitter<BooksMarkState> emit) async {
    final failureOrSuccess = await _booksMarkRepository.addRemoveBooksMark(
        booksMarkDto: event.booksMarkDto);
    emit(state.copyWith(isBookMarked: failureOrSuccess));
  }

  _onGetBooksMark(_GetBooksMark event, Emitter<BooksMarkState> emit) async {
    final failureOrSuccess = await _booksMarkRepository.getBooksMarked();
    emit(state.copyWith(failureOrSuccess: failureOrSuccess));
  }

  _onIsBookMarked(_IsBookMarked event, Emitter<BooksMarkState> emit) async {
    final failureOrSuccess =
        await _booksMarkRepository.isBookMarked(title: event.title);
    emit(state.copyWith(isBookMarked: failureOrSuccess));
  }

  _onGetRemoveBooksMark(
      _GetRemoveBooksMark event, Emitter<BooksMarkState> emit) async {
    await _booksMarkRepository.getRemoveBooksMark(title: event.title);
  }
}
