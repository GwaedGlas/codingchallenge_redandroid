

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

  @override
  bool operator ==(Object other) {
    // Other types can't be equal
    if(other is! House) return false;

    // These objects are definitely equal
    // (Flutter Object implements the hashcode as its identity)
    if(hashCode == other.hashCode) return true;

    // Objects with different contents are not equal
    if(url != other.url) return false;
    if(name != other.name) return false;
    if(region != other.region) return false;
    if(coatOfArms != other.coatOfArms) return false;
    if(words != other.words) return false;
    if(diedOut != other.diedOut) return false;

    // Objects which are not the same instance but have the same content are equal
    return true;
  }
}