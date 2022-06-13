import 'dart:async';

import 'package:codingchallenge_redandroid/service/houses/data/house.dart';
import 'package:codingchallenge_redandroid/service/houses/house_service.dart';
import 'package:flutter/material.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'house_api_of_ice_and_fire_retrofit.g.dart';

@RestApi(baseUrl: "https://anapioficeandfire.com/api/")
abstract class HousesApiOfIceAndFireRetrofit extends HouseService {
  static const _pageSize = 50;

  factory HousesApiOfIceAndFireRetrofit(Dio dio, {String baseUrl}) = _HousesApiOfIceAndFireRetrofit;

  HousesApiOfIceAndFireRetrofit._();

  @override
  FutureOr<List<House>> getHouses() async{
    int page = 1;
    final result = <House>[];
    bool requestNextPage = true;
    while(requestNextPage) {
      final pageResults = await getHousePage(page, _pageSize);
      result.addAll(pageResults);
      requestNextPage = pageResults.isNotEmpty;
      page++;
    }
    return result;
  }

  @protected
  @GET("/houses")
  Future<List<House>> getHousePage(@Query("page") int page,
      @Query("pageSize") int pageSize,);
}