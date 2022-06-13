import 'package:bloc/bloc.dart';
import 'package:codingchallenge_redandroid/service/houses/implementation/house_api_of_ice_and_fire_retrofit.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../../repositories/house_repository.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  final HouseRepository _houseRepository;

  SplashCubit(this._houseRepository) : super(SplashInitial());

  Future<void> initialize() async {
    try {
      emit(SplashInitializing());
      _initializeRetrofit();
      emit(SplashLoading());
      await _loadData();
      emit(SplashLoaded());
    } on Exception catch (exception) {
      emit(SplashException(exception));
    }
  }

  void _initializeRetrofit(){
    final dio = Dio();
    final service = HousesApiOfIceAndFireRetrofit(dio);
    _houseRepository.service = service;
  }

  Future<void> _loadData() async{
    await _houseRepository.load();
  }
}
