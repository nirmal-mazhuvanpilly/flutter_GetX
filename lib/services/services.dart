import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_getx/model/sample.dart';
import 'package:http/http.dart' as http;

abstract class BaseServices {
  Future<SampleModel?> getSampleData();
}

class Services implements BaseServices {
  @override
  Future<SampleModel?> getSampleData() async {
    String url = "https://reqres.in/api/unknown";
    Uri uri = Uri.parse(url);
    try {
      http.Response response = await http.get(uri);
      if (response.statusCode == 200) {
        return SampleModel.fromJson(jsonDecode(response.body));
      } else {
        throw "Failed to load sample data";
      }
    } catch (e) {
      debugPrint("Exception : $e");
    }
  }
}
