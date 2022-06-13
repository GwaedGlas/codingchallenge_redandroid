

import 'package:json_annotation/json_annotation.dart';

part 'house.g.dart';
@JsonSerializable(fieldRename: FieldRename.none)
class House {
  final String url;
  final String name;
  final String region;
  final String coatOfArms;
  final String words;
  final String diedOut;

  House(this.url, this.name, this.region, this.coatOfArms, this.words, this.diedOut);

  factory House.fromJson(Map<String, dynamic> json) => _$HouseFromJson(json);

  Map<String, dynamic> toJson() => _$HouseToJson(this);

}