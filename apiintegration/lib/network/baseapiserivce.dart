

abstract class BaseApiServices{
 Future<dynamic> GetApiCall(String url,context);
 Future<dynamic> PostApiCall(String url,dynamic data,context);
}