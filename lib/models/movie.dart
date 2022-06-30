import 'package:freezed_annotation/freezed_annotation.dart';

import 'review.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

enum MovieType {
  unknown(description: 'something special.'),
  love(description: 'Make you fall in love.'),
  @JsonValue('Action')
  action(description: "It's exciting.");

  final String description;

  const MovieType({required this.description});
}

@freezed
class Movie with _$Movie {
  @Assert('id.isNotEmpty')
  @Assert('name.length > 0', 'name can not be empty.')
  factory Movie({
    required String id,
    String? author,
    @JsonKey(name: 'name') required String name,
    @Default(false) bool isHot,
    @JsonKey(name: "some_review") @Default([]) List<Review> reviews,
    @Default(MovieType.unknown) MovieType type,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
