import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/home_bindings.dart';
import 'package:flutter_getx/view/counter_app.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      getPages: [
        GetPage(
            name: "/", page: () => const HomePage(), binding: HomeBindings())
      ],
      
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CounterAppView();
  }
}
