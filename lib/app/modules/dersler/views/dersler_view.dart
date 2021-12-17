import 'dart:math';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:mobildershane/app/modules/home/controllers/home_controller.dart';
import 'package:mobildershane/app/routes/app_pages.dart';
import 'package:getwidget/getwidget.dart';

final firestoreInstance = FirebaseFirestore.instance;

class DerslerView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Image.network(
          "https://www.mobil-dershane.com/wp-content/uploads/2021/04/logo-2048x842.png",
          width: 200,
          height: 90,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://cdn.wallpapersafari.com/59/28/ydc3wA.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.8,
              child: Obx(() => ListView.builder(
                    itemCount: controller.dersler.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ElevatedButton(
                        onPressed: () async {
                          await controller
                              .konuCek(controller.dersler[index].toString());
                          Get.toNamed(Routes.KONULAR);
                        },
                        child: Text(controller.dersler[index].toString()),
                        style: ElevatedButton.styleFrom(
            primary: Theme.of(context).primaryColor
                          ),
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
