import 'package:get/get.dart';
import 'package:getx_all/state_management/student.dart';

class MyController extends GetxController{
  var student = Student();
  void convertToUpperCase(){
    student.name.value = student.name.value.toUpperCase();
  }

  // var student = Student(name: 'Ibrahim', age: 23).obs;
  // void convertUpperCase(){
  //   student.update((student)){
  //   }
  // }
}