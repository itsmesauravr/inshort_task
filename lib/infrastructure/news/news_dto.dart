import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'news_dto.g.dart';

NewsDto newsDtoFromJson(String str) => NewsDto.fromJson(json.decode(str));

String newsDtoToJson(NewsDto data) => json.encode(data.toJson());

@JsonSerializable()
class NewsDto {
  @JsonKey(name: "category")
  String category;
  @JsonKey(name: "data")
  List<NewsData> data;
  @JsonKey(name: "success")
  bool success;

  NewsDto({
    required this.category,
    required this.data,
    required this.success,
  });

  factory NewsDto.fromJson(Map<String, dynamic> json) => _$NewsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$NewsDtoToJson(this);
}

@JsonSerializable()
class NewsData {
  @JsonKey(name: "author")
  String author;
  @JsonKey(name: "content")
  String content;
  @JsonKey(name: "date")
  String date;
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "imageUrl")
  String imageUrl;
  @JsonKey(name: "readMoreUrl")
  String readMoreUrl;
  @JsonKey(name: "time")
  String time;
  @JsonKey(name: "title")
  String title;
  @JsonKey(name: "url")
  String url;

  NewsData({
    required this.author,
    required this.content,
    required this.date,
    required this.id,
    required this.imageUrl,
    required this.readMoreUrl,
    required this.time,
    required this.title,
    required this.url,
  });

  factory NewsData.fromJson(Map<String, dynamic> json) => _$NewsDataFromJson(json);

  Map<String, dynamic> toJson() => _$NewsDataToJson(this);
}
