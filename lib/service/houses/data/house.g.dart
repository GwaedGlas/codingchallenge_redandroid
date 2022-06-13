// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

House _$HouseFromJson(Map<String, dynamic> json) => House(
      json['url'] as String,
      json['name'] as String,
      json['region'] as String,
      json['coatOfArms'] as String,
      json['words'] as String,
      json['diedOut'] as String,
    );

Map<String, dynamic> _$HouseToJson(House instance) => <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'region': instance.region,
      'coatOfArms': instance.coatOfArms,
      'words': instance.words,
      'diedOut': instance.diedOut,
    };
