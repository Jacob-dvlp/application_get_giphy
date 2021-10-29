import 'package:application_get_giphy/views/aboutItem/controlleritem.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controlleritem>(
        init: Controlleritem(),
        builder: (_) {
          return Scaffold(
            body: Container(
              width: Get.width,
              child: Image.network(
                _.data[2],
              ),
            ),
          );
        });
  }
}

