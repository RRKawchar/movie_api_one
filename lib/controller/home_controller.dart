import 'dart:convert';

import 'package:get/get.dart';
import 'package:movie_api_practice_1/model/movie.dart';
import 'package:movie_api_practice_1/service/api_service.dart';
import 'package:movie_api_practice_1/utils/constants.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  var movieList = <Movie>[].obs;
  var isLoading = false.obs;
  @override
  void onInit() {
     fetchData();

    super.onInit();
  }

  void fetchData() async {
    try {
      isLoading(true);
      var result = await ApiService().fetchAllMovie(MyConstants.apiUrl);
      if (result != null) {
        movieList.value = result;
        print(movieList.value = result);
      }
    } finally {
      isLoading(false);
    }
  }


}
