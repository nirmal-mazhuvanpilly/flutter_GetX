import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;

  void incrementCounter() {
    counter.value = counter.value + 1;
  }

  void decrementCounter() {
    counter.value = counter.value - 1;
  }
}
