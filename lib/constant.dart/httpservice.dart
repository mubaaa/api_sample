import 'package:api_sample/constant.dart/constant.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


class HttpService{

 static Constant constu=Constant();
  String baseUrl=constu.baseUrl;
  List<Characters>? character; 
  late Dio dio;

  HttpService(){
    Dio dio=Dio(BaseOptions(baseUrl: baseUrl));
  }

  Future<List<Characters?>> getCharacters()async{
   Response response;
   response= await dio.get(baseUrl);
   character= Characters.
 }

}