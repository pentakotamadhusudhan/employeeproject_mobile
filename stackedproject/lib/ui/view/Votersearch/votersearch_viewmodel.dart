
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:stacked/stacked.dart';
import 'package:stackedproject/resoucres/app_urls.dart';

import 'Pollingmodel.dart';
import 'Sectionmodel.dart';
import 'Votermodel.dart';

class VoterViewModel extends  BaseViewModel{
  String? _consitutencyselection ;
  String? sectionselection ;
  String? pollingstationselection ;
  Pollingmodel voter = Pollingmodel();
  Sectionmodel section = Sectionmodel();

  String? get consitutencyselection => _consitutencyselection;
  // var sectionname = "Chowduvada-222/";

  set consitutencyselection(Object? consitutencyselection) {


  }

   Future <dynamic> getconsititunecy () async{
     print("object");

     var client = http.Client();

       // String url = 'https://jsonplaceholder.typicode.com/posts';
       String url = AppUrl.getpolloingstationname;
       var respone = await client.get(
           Uri.parse(url),
           headers: {
             "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjkxMjQ4MzM4LCJpYXQiOjE2ODM0NzIzMzgsImp0aSI6ImIxNDNhZGM4NjhkZjRiNjRhNDVhZmE2YTI2YmJjZTJiIiwidXNlcl9pZCI6MX0.qE32KNz5A4Octaf4XUxoRMgMzNIMjKBJEAIWEtrvSa4"
           });
       print(respone.statusCode);
       print(respone.body);
       var x = jsonDecode(respone.body);

       // for (var i in x) {
       //   var y = (i['title']);
       //   _items.add(y);
       // }
       voter = Pollingmodel.fromJson(x);


   }
   Future get getapi=> getconsititunecy();

  Future <dynamic> getsectionnames () async{
    print("object");

    var client = http.Client();

    // String url = 'https://jsonplaceholder.typicode.com/posts';
    String url = AppUrl.getsectionnameurl+"${consitutencyselection}";
    print(url);
    var respone = await client.get(
        Uri.parse(url),
        headers: {
          "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjkxMjQ4MzM4LCJpYXQiOjE2ODM0NzIzMzgsImp0aSI6ImIxNDNhZGM4NjhkZjRiNjRhNDVhZmE2YTI2YmJjZTJiIiwidXNlcl9pZCI6MX0.qE32KNz5A4Octaf4XUxoRMgMzNIMjKBJEAIWEtrvSa4"
        });
    print(respone.statusCode);
    print(respone.body);
    var x = jsonDecode(respone.body);
    section = Sectionmodel.fromJson(x);
  }

  Future get getsection => getsectionnames();

}


