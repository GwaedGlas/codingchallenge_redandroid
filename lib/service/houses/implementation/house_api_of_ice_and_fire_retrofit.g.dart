// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_api_of_ice_and_fire_retrofit.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _HousesApiOfIceAndFireRetrofit extends HousesApiOfIceAndFireRetrofit {
  _HousesApiOfIceAndFireRetrofit(this._dio, {this.baseUrl})  : super._(){
    baseUrl ??= 'https://anapioficeandfire.com/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<House>> getHousePage(page, pageSize) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page': page,
      r'pageSize': pageSize
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(_setStreamType<List<House>>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/houses',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => House.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
