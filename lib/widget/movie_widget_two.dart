
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_api_practice_1/controller/home_controller.dart';

class MovieWidgetTwo extends StatelessWidget {
  MovieWidgetTwo({Key? key}) : super(key: key);

  final homeController=Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(()=>ListView.builder(
        itemCount: homeController.movieList.length,
        itemBuilder: (context,index){
          return Text(homeController.movieList[index].title,style: const TextStyle(
              color: Colors.black
          ),);
        }));

  }
}
