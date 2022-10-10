import 'package:dio/dio.dart';

class DioServices{
  Future<dynamic> getMethod({url}){
    return Dio().get(url,options: Options(responseType: ResponseType.json,method: 'GET')).then((response){
      print(response);
      return response;
    });
  }
}