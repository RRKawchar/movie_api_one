import 'package:flutter/material.dart';
import 'package:movie_api_practice_1/widget/movie_widget_two.dart';

class ApiScreenTwo extends StatelessWidget {
  const ApiScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title:const Text("Movie",style: TextStyle(fontSize: 30),),

       ),
      body: MovieWidgetTwo(),
    );
  }
}
