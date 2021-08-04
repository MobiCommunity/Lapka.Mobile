import 'dart:convert';
import 'package:http/http.dart';

enum Type {post,get}

class Requests {

  static sendRequest(String urlArgument, dynamic parametersArgument, Type type)async {
    Map<String, String> header;
    Uri url = Uri.parse(urlArgument);

    header = {"Content-type": "application/json"};

    try{
      Response? response;
      if(type == Type.post)
        response = await post(url, headers: header, body: jsonEncode(parametersArgument));
      else if(type == Type.get)
        response = await get(url, headers: header);

      print(urlArgument);
      print(header);
      print(parametersArgument);
      print(response!.statusCode);
      print(response.body);

      return response;
    }catch(e){
      print(e);
    }
  }
}