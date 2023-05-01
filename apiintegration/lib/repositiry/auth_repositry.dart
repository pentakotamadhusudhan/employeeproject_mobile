import 'package:apiintegration/network/baseapiserivce.dart';
import 'package:apiintegration/network/networkapiserivce.dart';
import 'package:apiintegration/resources/appurls.dart';

class Authrespository{
BaseApiServices _auth = NetWorkApiSerivce();

Future<dynamic> gatapicall(context) async{
  try{
  dynamic response = await _auth.GetApiCall(ApiUrls.getapi,context);
  return response;
  }catch (e){
    throw e;
  }

}

Future<dynamic> getpostcall(data,context) async{
  try{
    dynamic response= await _auth.PostApiCall(ApiUrls.posturl, data, context);
    return response;
  }catch (e){
    throw e;

  }
}
}