import 'package:splash_screen_and_ogin_page/models/post_model.dart';

abstract class HomeRepository {
  Future<List<PostModel>> getList();
}
