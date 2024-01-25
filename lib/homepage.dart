import 'package:flutter_view_controller/flutter_view_controller.dart';
import 'package:flutter/material.dart';

class HomePageController extends Controller {
  @override
  onInit() {}

// uma lista com 5 nomes de usuários
  List<String> users = ['João', 'Maria', 'José', 'Pedro', 'Paulo'];

  @override
  onClose() {}
}

class HomePageView extends ViewOf<HomePageController> {
  const HomePageView({super.key, required super.controller, super.size});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // exibir a lista de usuarios
        Expanded(
            child: ListView.builder(
                itemCount: controller.users.length,
                itemBuilder: (context, index) => ListTile(
                      title: Text(controller.users[index]),
                    )))
      ],
    ));
  }
}
