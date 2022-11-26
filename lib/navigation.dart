import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_all/dialog.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Go to Home'),
              onPressed: ()async{
                // Get.to(Dialog1(),
                //   fullscreenDialog: true,
                //   transition: Transition.zoom,
                //  // duration: Duration(milliseconds: 400),
                //   curve: Curves.bounceInOut
                // );
                // Get.to(Dialog1(),arguments: 'Data From Navigator');
                var data = await Get.to(Dialog1());
                print('The recive data is $data');
              },
            )
          ],
        ),
      ),
    );
  }
}
