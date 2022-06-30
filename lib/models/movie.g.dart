// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      id: json['id'] as String,
      author: json['author'] as String?,
      name: json['name'] as String,
      isHot: json['isHot'] as bool? ?? false,
      reviews: (json['some_review'] as List<dynamic>?)
              ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      type: $enumDecodeNullable(_$MovieTypeEnumMap, json['type']) ??
          MovieType.unknown,
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'name': instance.name,
      'isHot': instance.isHot,
      'some_review': instance.reviews,
      'type': _$MovieTypeEnumMap[instance.type],
    };

const _$MovieTypeEnumMap = {
  MovieType.unknown: 'unknown',
  MovieType.love: 'love',
  MovieType.action: 'Action',
};
