import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mobildershane/app/modules/home/controllers/home_controller.dart';

class KonularView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(128, 92, 225, 88),
        leading: IconButton(
          onPressed: () {
            Get.back();
            controller.dersler.clear();
          },
          icon: Icon(Icons.keyboard_backspace_sharp),
          iconSize: 40,
        ),
        title: Image.network(
          "https://i.ibb.co/yf3bVsX/dfdf.png",
          width: 260,
          height: 50,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.6,
              child: Obx(() => ListView.builder(
                    itemCount: controller.konular.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ElevatedButton(
                          onPressed: () {},
                          child: Text(controller.konular[index].toString()),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.red),
                          ));
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
