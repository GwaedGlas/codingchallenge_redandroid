import 'package:codingchallenge_redandroid/service/houses/house_service.dart';

import '../service/houses/data/house.dart';

class HouseRepository {
  final Map<String, House> _houses = {};
  HouseService? service;

  HouseRepository({this.service});

  Future<void> load() async {
    service ?? (throw Exception("Service is not initialized"));
    _houses.clear();
    final houseList = await service!.getHouses();
    for (var house in houseList) {
      _houses[house.url] = house;
    }
  }

  /// Houses have to be [load] before accessing them.
  House getHouseByUrl(String url) {
    if (!_houses.containsKey(url)) {
      throw ArgumentError("House with identifier $url not found");
    }
    return _houses[url]!;
  }

  List<House> get allHouses => _houses.values.toList();
}
