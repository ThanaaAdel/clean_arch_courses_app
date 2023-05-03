import 'package:dio/dio.dart';

class ApiServise {
final Dio _dio;
final baseUrl = "http://first.byaan.org/api";

  ApiServise(this._dio);
  Future<Map<String,dynamic>> get({required endPoint}) async{
    var responce = await _dio.get('$baseUrl$endPoint');
    return responce.data;

  }
}