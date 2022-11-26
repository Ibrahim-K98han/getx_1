import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Snackbar extends StatefulWidget {
  const Snackbar({Key? key}) : super(key: key);

  @override
  State<Snackbar> createState() => _SnackbarState();
}

class _SnackbarState extends State<Snackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Show Snackbar'),
              onPressed: (){
                Get.snackbar(
                    'RETINA',
                    'Medical and dental admission coaching',
                    snackPosition: SnackPosition.BOTTOM,
                    // titleText: Text('Another Title'),
                    // messageText: Text(
                    //   'Anoteher Message',
                    // )
                    colorText: Colors.red,
                    backgroundColor: Colors.black26,
                    borderRadius: 30,
                    margin: EdgeInsets.all(10),
                    // maxWidth: 100
                    animationDuration: Duration(milliseconds: 3000),
                    backgroundGradient: LinearGradient(
                        colors: [Colors.red, Colors.green]
                    ),
                    borderColor: Colors.purpleAccent,
                    borderWidth: 4,
                    isDismissible:true,
                    forwardAnimationCurve: Curves.bounceInOut,
                    duration: Duration(milliseconds: 8000),
                    icon: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                    mainButton: TextButton(
                      child: Text('Retry'),
                      onPressed: (){},
                    ),
                    overlayBlur: 5

                );
              },
            )
          ],
        ),
      ),
    );
  }
}
