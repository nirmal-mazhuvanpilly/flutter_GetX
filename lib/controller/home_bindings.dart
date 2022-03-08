import 'package:flutter_getx/controller/counter_controller.dart';
import 'package:get/get.dart';

class HomeBindings implements Bindings {
  //Register all Dependenices here
  @override
  void dependencies() {
    Get.lazyPut<CounterController>(
        () => CounterController()); //Lazy loads dependencies
    Get.lazyPut<CounterController>(() => CounterController(),
        tag: "nextController");
  }
}
