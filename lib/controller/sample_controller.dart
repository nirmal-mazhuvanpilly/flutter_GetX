import 'package:flutter_getx/model/sample.dart';
import 'package:flutter_getx/services/services.dart';
import 'package:get/get.dart';

class SampleController extends GetxController {
  final Services _services = Services();

  static SampleController get to => Get.find();

  SampleModel? model;

  Future<void> getSampleData() async {
    model = await _services.getSampleData();
    update();
  }
}
