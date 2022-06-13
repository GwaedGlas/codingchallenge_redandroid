import 'package:bloc_test/bloc_test.dart';
import 'package:codingchallenge_redandroid/repositories/house_repository.dart';
import 'package:codingchallenge_redandroid/screens/splash/cubit/splash_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockHouseRepository extends Mock implements HouseRepository {}

main() {
  MockHouseRepository? mockHouseRepository;
  setUp(() {
    mockHouseRepository = MockHouseRepository();
  });
  group(
    "Splash cubit tests -",
    () {
      test("Check setUp has run", () {
        expect(mockHouseRepository, isNotNull);
      });
      blocTest<SplashCubit, SplashState>(
        "initialize()",
        build: () {
          when(mockHouseRepository!.load())
              .thenAnswer((realInvocation) => null);
          return SplashCubit(mockHouseRepository!);
        },
        act: (cubit) => cubit.initialize(),
        expect: () => [
          isA<SplashInitializing>(),
          isA<SplashLoading>(),
          isA<SplashLoaded>(),
        ],
      );
      blocTest<SplashCubit, SplashState>(
        "initialize() uninitialized service",
        build: () {
          when(mockHouseRepository!.load()).thenThrow(Exception("Service is not initialized"));
          return SplashCubit(mockHouseRepository!);
        },
        act: (cubit) => cubit.initialize(),
        expect: () => [
          isA<SplashInitializing>(),
          isA<SplashLoading>(),
          isA<SplashException>(),
        ],
      );
    },
  );
}
