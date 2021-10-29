import 'dart:convert';

import 'package:application_get_giphy/data/url_data.dart';
import 'package:application_get_giphy/interface/interface.dart';
import 'package:application_get_giphy/models/model_gipys.dart';
import 'package:http/http.dart' as http;

class ServiceApi extends Interface {
  static var client = http.Client();
  List<ListGyph> listaimg = [];
  final urlEnd =
      "trending?api_key=R6S9BhCcsCv7tyUBhGBj1cdFl6LBJ7hd&limit=25&rating=g";

  @override
  Future getAllGif() async {
    try {
      http.Response response = await http.get(
        Uri.parse(Url + urlEnd),
      );
      if (response.statusCode == 200) {
        String jsontopar = Utf8Decoder().convert(response.bodyBytes);
        final modelfromjson = modelGipFromJson(jsontopar);
        listaimg = modelfromjson.data;
        print(listaimg);
        return listaimg;
      } else {
        return null;
      }
    } catch (e) {
      return print(e);
    }
  }
}
