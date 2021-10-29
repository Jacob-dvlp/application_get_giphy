import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controlleritem extends GetxController {
  final data = Get.arguments;
  var isLoanding = true.obs;
  @override
  void onInit() {
      print(data);
    Future.delayed(
      Duration(seconds: 5),
      () {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    super.onInit();
  }
}
