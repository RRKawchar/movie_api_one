import 'dart:convert';

import 'package:movie_api_practice_1/model/movie.dart';
import 'package:http/http.dart'as http;

class ApiService{
  Future fetchAllMovie(String url)async{
    final response = await http.get(Uri.parse(url));

    if(response.statusCode==200){

      final result = jsonDecode(response.body);
      print(result);
      return result;
    }else{
      throw Exception('Fail to load data');
    }

  }

}