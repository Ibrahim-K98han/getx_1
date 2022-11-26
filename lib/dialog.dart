import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Dialog1 extends StatefulWidget {
  const Dialog1({Key? key}) : super(key: key);

  @override
  State<Dialog1> createState() => _Dialog1State();
}

class _Dialog1State extends State<Dialog1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Show Dialog'),
              onPressed: (){
                // Get.defaultDialog();
                Get.defaultDialog(
                  title: 'BUBT',
                  middleText: 'bangladesh universty of business and technology',
                  backgroundColor: Colors.purpleAccent,
                  radius: 80,
                  textCancel: 'Cancel',
                  textConfirm: 'Confirm',
                  onCancel: (){},
                  onConfirm: (){},
                  buttonColor: Colors.red,
                  cancel:  Text(
                      'Cancel',
                      style: TextStyle(color:Colors.white,backgroundColor: Colors.red,),
                    ),
                  confirm: Text(
                    'Confirm',
                    style: TextStyle(color: Colors.white,backgroundColor: Colors.green),
                  ),
                  actions: [
                    ElevatedButton(
                      child: Text('Action-1'),
                      onPressed: (){
                        Get.back();
                      },
                    ),
                    TextButton(
                      child: Text('Action-2'),
                      onPressed: (){

                      },
                    )
                  ],
                  barrierDismissible: false,
                );
              },
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              child: Text('Back to Navigator page'),
              onPressed: (){
               Get.back(result: 'This is form Dialog Screen');
              },
            ),
            // Text(
            //   '${Get.arguments}',
            // )
          ],
        ),
      ),
    );
  }
}
