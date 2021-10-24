import 'package:application_get_giphy/models/model_gipys.dart';
import 'package:application_get_giphy/services/service_api.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  List<Images> img = [];
  var isLoading = true.obs;

  Future getAll() async {
    try {
      isLoading(true);
      img = await ServiceApi.getAllData();
    } catch (e) {
      isLoading(false);
    }
  }
}
