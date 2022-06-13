import 'dart:async';

import 'data/house.dart';

abstract class HouseService{
  FutureOr<List<House>> getHouses();

}