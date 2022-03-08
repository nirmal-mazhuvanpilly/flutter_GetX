import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/counter_controller.dart';
import 'package:get/get.dart';

class CounterAppView extends StatelessWidget {
  CounterAppView({Key? key}) : super(key: key);

  final CounterController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GetX<CounterController>(builder: (controller) {
          return Text(
              "Counter App / Count : " + controller.counter.value.toString());
        }),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(_controller.counter.value.toString())),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: _controller.incrementCounter,
                    child: const Text("+")),
                const SizedBox(width: 10),
                ElevatedButton(
                    onPressed: _controller.decrementCounter,
                    child: const Text("-"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
