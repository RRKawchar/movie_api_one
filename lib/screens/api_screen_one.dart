import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movie_api_practice_1/model/movie.dart';
import 'package:http/http.dart' as http;
import 'package:movie_api_practice_1/widget/movie_widget.dart';

class ApiScreenOne extends StatefulWidget {
  const ApiScreenOne({Key? key}) : super(key: key);

  @override
  State<ApiScreenOne> createState() => _ApiScreenOneState();
}

class _ApiScreenOneState extends State<ApiScreenOne> {
List<Movie> movie=[];

  Future<List<Movie>> _fetchMovie() async {
    final response = await http.get(
      Uri.parse("http://www.omdbapi.com/?s=Batman&page=2&apikey=564727fa"),
    );

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      print("Result : $result");
      Iterable list = result['Search'];
      return list.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception("Failed to load movies");
    }
  }

  void getMovie()async{

  movie= await _fetchMovie();
  }

  @override
  void initState() {
    getMovie();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Movies",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: MovieWidget(movie: movie,)
    );
  }
}
