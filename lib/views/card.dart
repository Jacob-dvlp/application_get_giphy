import 'package:application_get_giphy/models/model_gipys.dart';
import 'package:flutter/material.dart';

class CardGiphy extends StatelessWidget {
  final Images img;

  const CardGiphy(this.img);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(img.original.url),
          Image.network(img.original.url),
        ],
      ),
    );
  }
}
