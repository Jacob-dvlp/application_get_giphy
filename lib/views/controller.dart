import 'package:application_get_giphy/models/model_gipys.dart';
import 'package:application_get_giphy/services/service_api.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var lokinggiphy = List<Datum>().obs;
  var isLoading = true.obs;
  ServiceApi _services = ServiceApi();

  void getAll() async {
    try {
      isLoading(true);
      final giphy = await _services.getAllData();
      if (giphy != null) {
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
