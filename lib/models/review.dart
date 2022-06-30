import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Review with _$Review {
  const Review._();

  factory Review({
    required double score,
    required String message,
  }) = _Review;

  bool isGoodScord() => score >= 90;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
