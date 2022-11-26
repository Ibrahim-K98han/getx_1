import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_all/state_management/my_controller.dart';
import 'package:getx_all/state_management/student.dart';

class StateManagement extends StatelessWidget {
  // var count = 0.obs;
  //
  // void increment() {
  //   count++;
  // }
  //
  // //var student = Student();
  // final student = Student(name: 'Ibrahim', age: 23).obs;
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Obx(() => Text('Count value is $count')),
            // SizedBox(
            //   height: 10,
            // ),
            // ElevatedButton(onPressed: () {
            //   increment();
            // }, child: Text('Increment'))
            Obx(() => Text(
                  'Name is ${myController.student.name}',
                  style: TextStyle(fontSize: 25),
                )),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {
              //student.name.value = student.name.value.toUpperCase();
              // student.update((student) {
              //   student!.name = student.name.toString().toUpperCase();
              // });
              myController.convertToUpperCase();
            }, child: Text('Upper'))
          ],
        ),
      ),
    );
  }
}
