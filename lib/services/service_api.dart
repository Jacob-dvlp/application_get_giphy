import 'dart:convert';

import 'package:application_get_giphy/models/model_gipys.dart';
import 'package:http/http.dart' as http;

class ServiceApi {
  static var client = http.Client();
  List<Datum> listaimg = [];
  Future getAllData() async {
    final urlgetall =
        "https://api.giphy.com/v1/gifs/trending?api_key=R6S9BhCcsCv7tyUBhGBj1cdFl6LBJ7hd&limit=25&rating=g";
    http.Response response = await http.get(
      Uri.parse(urlgetall),
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
  }
}
