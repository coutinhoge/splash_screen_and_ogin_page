import 'package:flutter/material.dart';
import 'package:splash_screen_and_ogin_page/controllers/home_controller.dart';
import 'package:splash_screen_and_ogin_page/models/post_model.dart';
import 'package:splash_screen_and_ogin_page/repositories/home_repository_mock.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryMock());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<List<PostModel>>(
          valueListenable: _controller.posts,
          builder: (_, list, __) {
            return ListView.builder(
              itemCount: list.length,
              itemBuilder: (_, idx) => ListTile(
                title: Text(list[idx].title),
              ),
            );
          }),
    );
  }
}
