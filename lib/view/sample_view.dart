import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/sample_controller.dart';
import 'package:flutter_getx/utils/utils.dart';
import 'package:get/get.dart';

class SampleDataView extends StatelessWidget {
  const SampleDataView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sample Data"),
        ),
        body: GetBuilder<SampleController>(initState: (state) {
          SampleController.to.getSampleData();
        }, builder: (controller) {
          if (controller.model == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: controller.model?.data?.length,
              itemBuilder: (context, index) {
                final id =
                    controller.model?.data?.elementAt(index).id.toString();
                final name =
                    controller.model?.data?.elementAt(index).name.toString();
                final year =
                    controller.model?.data?.elementAt(index).year.toString();
                final color =
                    controller.model?.data?.elementAt(index).color.toString();
                final pantone = controller.model?.data
                    ?.elementAt(index)
                    .pantoneValue
                    .toString();
                return SampleCard(
                  id: id,
                  name: name,
                  year: year,
                  color: color,
                  pantone: pantone,
                );
              },
            );
          }
        }));
  }
}

class SampleCard extends StatelessWidget {
  const SampleCard(
      {Key? key, this.id, this.name, this.year, this.color, this.pantone})
      : super(key: key);

  final String? id;
  final String? name;
  final String? year;
  final String? color;
  final String? pantone;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Utilities.k10Padding,
      margin: Utilities.k10Padding,
      decoration: BoxDecoration(
          color: HexColor(color ?? "FF0000"),
          borderRadius: Utilities.k10CircularRadius),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("ID", style: Utilities.kWhiteTextStyle),
              Text("Name", style: Utilities.kWhiteTextStyle),
              Text("Year", style: Utilities.kWhiteTextStyle),
              Text("Color", style: Utilities.kWhiteTextStyle),
              Text("Pantone Value", style: Utilities.kWhiteTextStyle),
            ],
          ),
          Utilities.k25Width,
          Column(
            children: const [
              Text(":", style: Utilities.kWhiteTextStyle),
              Text(":", style: Utilities.kWhiteTextStyle),
              Text(":", style: Utilities.kWhiteTextStyle),
              Text(":", style: Utilities.kWhiteTextStyle),
              Text(":", style: Utilities.kWhiteTextStyle),
            ],
          ),
          Utilities.k25Width,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(id ?? "", style: Utilities.kWhiteTextStyle),
              Text(name ?? "", style: Utilities.kWhiteTextStyle),
              Text(year ?? "", style: Utilities.kWhiteTextStyle),
              Text(color ?? "", style: Utilities.kWhiteTextStyle),
              Text(pantone ?? "", style: Utilities.kWhiteTextStyle),
            ],
          ),
        ],
      ),
    );
  }
}
