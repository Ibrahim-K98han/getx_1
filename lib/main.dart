import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_all/navigator_named_route/home_page.dart';
import 'package:getx_all/navigator_named_route/next_page.dart';
import 'package:getx_all/state_management/statemanagement.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx',
      // initialRoute: '/',
      // defaultTransition: Transition.zoom,
      // getPages: [
      //   GetPage(
      //     name: '/',page: ()=>MyApp()
      //   ),
      //   GetPage(name: '/home', page: ()=>HomePage()),
      //   GetPage(name: '/nextScreen', page: ()=>NextPage(),
      //     transition: Transition.leftToRight),
      // ],
      home:  StateManagement()
      );
  }
}
