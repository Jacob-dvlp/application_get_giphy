import 'package:application_get_giphy/models/model_gipys.dart';
import 'package:application_get_giphy/routes/pages.dart';
import 'package:application_get_giphy/views/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardGiphy extends StatelessWidget {
  final ListGyph img;

  const CardGiphy(this.img);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controller>(
      init: Controller(),
      initState: (_) {},
      builder: (_) {
        return GestureDetector(
          onTap: () => Get.toNamed(
            ConstNames.ABOUTITEM,
            arguments: [
              img.images.fixedWidth,
              img.images.fixedHeight,
              img.images.original.url
            ],
          ),
          child: GetBuilder<Controller>(
            init: Controller(),
            initState: (_) {},
            builder: (_) {
              return Card(
                child: Column(
                  children: [
                    _.lokinggiphy.isEmpty
                        ? CircularProgressIndicator.adaptive()
                        : Image.network(img.images.original.url)
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
