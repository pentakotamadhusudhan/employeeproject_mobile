import 'package:flutter/material.dart';
// import 'package:projects/screens/voter_search.dart/';


class AppUrl {

  // static var baseurl = "https://reqres.in/";
  // static String loginurl = baseurl+'api/login';
  // static var baseurl = "http://172.105.37.117:8000";
  static var baseurl = "http://ivin.vivifyhealthcare.com:8000";
  static var loginurl = baseurl + "/UserIvin-API/Login/";
  static var getbyDisctrict = baseurl+"/PolticalApp/GetByIdlDistrict/";
  static var geturl = baseurl+"/UserIvin-API/DataAnalyticsGetByFields/";
  static String  getalldist = baseurl+"/PolticalApp/GetallDistrict/";
  static String getpolloingstationname = baseurl+"/UserIvin-API/PollingStationName/Madugula/";
  static String getsectionnameurl= baseurl+"/UserIvin-API/getallsectionnumberandname/";
}