
import 'package:codingchallenge_redandroid/service/houses/data/house.dart';
import 'package:test/test.dart';

void main() {
  group("House functionality test", () {
    test("Check From and To Json identity - Example Targaryen", () {
      final sourceHouse = House("testUrl", "testName", "testRegion", "testCoatOfArms", "testWords", "testDiedOut");
      final json = sourceHouse.toJson();
      final targetHouse = House.fromJson(json);
      expect(sourceHouse, equals(targetHouse));
    });
  });
}