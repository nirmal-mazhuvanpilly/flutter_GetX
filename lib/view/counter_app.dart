import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/counter_controller.dart';
import 'package:get/get.dart';

class CounterAppView extends StatelessWidget {
  CounterAppView({Key? key}) : super(key: key);

  final CounterController _controller = Get.find();

  final CounterController _nextController = Get.find(tag: "nextController");

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
            Obx(() => Text(
                "Default Controller : " + _controller.counter.value.toString())),
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
            ),
            const SizedBox(height: 25),
            GetX<CounterController>(
              tag: "nextController",
              builder: (next) => Column(
                children: [
                  Text("Second Controller : " + next.counter.value.toString()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: next.incrementCounter,
                          child: const Text("+")),
                      const SizedBox(width: 10),
                      ElevatedButton(
                          onPressed: _nextController.decrementCounter,
                          child: const Text("-"))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
