
import 'dart:convert';

import 'package:apiintegration/resources/appurls.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:apiintegration/models/Projectgetmodel.dart';
import 'package:apiintegration/network/baseapiserivce.dart';

class NetWorkApiSerivce extends BaseApiServices{
  @override
  Future GetApiCall(String url, context) async{
    Projectgetmodel repo = Projectgetmodel();
    dynamic responsejson;
    try{
      final dio=Dio();
      final response = await dio.get(url).timeout(Duration(seconds: 5));
      responsejson = jsonDecode(response.data);
      return (responsejson);
    }catch (e){
      throw e;
      return e;

    }

    // TODO: implement GetApiCall
    throw UnimplementedError();
  }

  @override
  Future PostApiCall(String url, dynamic data, context) async{
    dynamic responsejson;
    try{
      final client=http.Client();
      final response = await client.post(Uri.parse(url),body: data).timeout(Duration(seconds: 5));
      responsejson = jsonDecode(response.body);
      print(response.statusCode);
      return (responsejson);
    }catch (e){
      throw e;
      return e;
    }

    // TODO: implement GetApiCall
    throw UnimplementedError();

  }

}