import 'dart:io';
import 'package:al_quran/core/resources/constants/screen_path.dart';
import 'package:http/http.dart' as http;

class NetworkApiService extends BaseApiServices{
  @override
  Future<dynamic> getApi(String url) async{
    dynamic returnResponse;
    try{
      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 50));
      returnResponse = HelperFunctions.returnResponse(response);
      return returnResponse;
    }on SocketException{
      throw NoInternetException();
    }on TimeoutException{
      throw FetchDataException('');
    }
  }

  @override
  Future<dynamic> postApi(String url,dynamic data) async{
    dynamic returnStatusResponse;
    try{
      final response = await http.post(Uri.parse(url),
      body: data).timeout(const Duration(seconds: 20));
      returnStatusResponse = HelperFunctions.returnResponse(response);
    }on SocketException{
      throw NoInternetException();
    }on TimeoutException{
      throw FetchDataException('');
    }
    if(kDebugMode){
      debugPrint('response: ${returnStatusResponse}');
    }
    return returnStatusResponse;
  }

  @override
  Future<dynamic> deleteApi(String url) async{
    dynamic returnResponse;
    try{
      final response = await http.delete(Uri.parse(url)).timeout(const Duration(seconds: 50));
      returnResponse = HelperFunctions.returnResponse(response);
      return returnResponse;
    }on SocketException{
      throw NoInternetException();
    }on TimeoutException{
      throw FetchDataException('');
    }
  }

  @override
  Future<dynamic> updateApi(String url, var data) async{
    dynamic returnResponse;
    try{
      final response = await http.put(Uri.parse(url),
          body: data).timeout(const Duration(seconds: 50));
      returnResponse = HelperFunctions.returnResponse(response);
      return returnResponse;
    }on SocketException{
      throw NoInternetException();
    }on TimeoutException{
      throw FetchDataException('');
    }
  }


}