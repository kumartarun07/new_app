import 'dart:convert';
import 'dart:io';
import 'package:dainik_bhashkar_app/model/api_exception.dart';
import 'package:http/http.dart' as httpNews;
class ApiHelper

{
/*  /// search News
  Future<dynamic> getSearch(String data)
  async{
         data= AppCont.News;
    try{
      var respo = await httpNews.get(Uri.parse("${Urls.getSearchUrls}?query=$data}"));
      return returnJsonRes(respo);
    }on SocketException catch(e){
      throw FetchException(errorMsg: "No Internet !!");
    }
  }*/

 /// Headlines News
  Future<dynamic> getApi({required String url })
  async{
    var uri = Uri.parse(url);
     try{
         var res =await httpNews.get(uri);
         return returnJsonRes(res);
     }on SocketException catch(e){
             throw FetchException(errorMsg: "No Internet !!");
     }
  }

  dynamic returnJsonRes(httpNews.Response response)
  {
      switch(response.statusCode)
          {
        case 200: var mData =jsonDecode(response.body);
        return mData;
        case 400:throw BadRequestException(errorMsg: response.body.toString());
        case 401:
        case 403: throw UnauthorisedException(errorMsg: response.body.toString());
        case 500:
        default:throw FetchException(errorMsg:"Error Occurred while Communication with server with StatusCode :"
          "${response.body.toString()}");
      }

  }
}