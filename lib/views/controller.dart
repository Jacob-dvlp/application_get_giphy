import 'package:application_get_giphy/models/model_gipys.dart';
import 'package:application_get_giphy/services/service_api.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  // ignore: deprecated_member_use
  var lokinggiphy = List<ListGyph>().obs;
  var isLoading = true.obs;
  
  void getAll() async {
    try {
      isLoading(true);
      final giphy = await ServiceApi().getAllGif();
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
