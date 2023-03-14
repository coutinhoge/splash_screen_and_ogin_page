import 'package:splash_screen_and_ogin_page/models/post_model.dart';
import 'package:splash_screen_and_ogin_page/repositories/home_repository.dart';

import 'package:dio/dio.dart';

class HomeRepositoriyImp implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts');
      return (response.data as List).map((e) => PostModel.fromJson(e)).toList();
    } catch (e) {
      print(e);
    }

    return [];
  }
}
