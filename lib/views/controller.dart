import 'package:application_get_giphy/models/model_gipys.dart';
import 'package:application_get_giphy/services/service_api.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var lokinggiphy = List<Images>.empty().obs;
  var isLoading = true.obs;

  Future getAll() async {
    try {
      isLoading(true);
      var giphy = await ServiceApi.getAllData();
      if (lokinggiphy != null) {
        lokinggiphy.value = giphy;
      }
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    getAll();
    super.onInit();
  }
}
