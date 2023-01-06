import 'package:flutter/material.dart';
import 'package:movie_api_practice_1/model/movie.dart';

class MovieWidget extends StatelessWidget {
  final List<Movie> movie;
  const MovieWidget({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: movie.length,
        itemBuilder: (context, index) {
          final movies = movie[index];
          return ListTile(
              title: Row(
            children: [
              SizedBox(
                width: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(movies.poster),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(movies.title),
                      Text(movies.yera)
                    ],
                  ),
                ),
              )
            ],
          ));
        });
  }
}
