import 'package:application_get_giphy/constants/text.dart';
import 'package:application_get_giphy/views/card.dart';
import 'package:application_get_giphy/views/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class HomeGiphy extends StatelessWidget {
  final Controller _controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(TextCostantes.TitleHome),),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              if (_controller.isLoading.value)
                return Center(child: CircularProgressIndicator());

              return StaggeredGridView.countBuilder(
                crossAxisCount: 2,
                itemCount: _controller.lokinggiphy.length,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                itemBuilder: (context, index) {
                  return CardGiphy(_controller.lokinggiphy[index]);
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              );
            }),
          )
        ],
      ),
    );
  }
}
