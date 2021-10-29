import 'package:application_get_giphy/views/aboutItem/aboutitem.dart';
import 'package:application_get_giphy/views/home.dart';
import 'package:get/get.dart';

part 'const_names.dart';

abstract class Pages {
  static const inicialHome = ConstNames.HOME;

  static final routespages = [
    GetPage(
      name: ConstNames.HOME,
      page: () => HomeGiphy(),
    ),
    GetPage(
      name: ConstNames.ABOUTITEM,
      page: () => AboutItem(),
    )
  ];
}
