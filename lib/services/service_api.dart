import 'package:application_get_giphy/data/url_data.dart';
import 'package:application_get_giphy/models/model_gipys.dart';
import 'package:http/http.dart' as http;

 class ServiceApi {
  static Future getAllData() async {
    final urlgetall =
        "rending?api_key=R6S9BhCcsCv7tyUBhGBj1cdFl6LBJ7hd&limit=25&rating=g";
    List<Images> img = [];
    try {
      http.Response response = await http.get(
        Uri.parse(Url + urlgetall),
      );
      if (response.statusCode == 200) {
        final resjson = modelGiphyFromJson(response.body);
        img = resjson.data;
        return img;
      }
    } catch (e) {
      return null;
    }
  }
}
