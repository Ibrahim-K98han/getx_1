import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class BottomShetAndDynamicTheme extends StatefulWidget {
  const BottomShetAndDynamicTheme({Key? key}) : super(key: key);

  @override
  State<BottomShetAndDynamicTheme> createState() =>
      _BottomShetAndDynamicThemeState();
}

class _BottomShetAndDynamicThemeState extends State<BottomShetAndDynamicTheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boottom shet and theme'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Bottom Sheet'),
              onPressed: () {
                Get.bottomSheet(
                    Container(
                      child: Wrap(
                        children: [
                          ListTile(
                            leading: Icon(Icons.light_mode_outlined),
                            title: Text('Light Theme'),
                            onTap: () {
                              Get.changeTheme(
                                ThemeData.light(),
                              );
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.light_mode),
                            title: Text('Dark Theme'),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                          ),
                        ],
                      ),
                    ),
                    barrierColor: Colors.white,
                    backgroundColor: Colors.red,
                    isDismissible: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                      side: BorderSide(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 2
                      ),
                    ),
                  enableDrag: true
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
