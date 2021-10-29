import 'package:application_get_giphy/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'views/home.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeGiphy(),
        initialRoute: Pages.inicialHome,
        getPages: Pages.routespages);
  }
}
