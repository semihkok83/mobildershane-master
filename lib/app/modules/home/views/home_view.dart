import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:mobildershane/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

final firestoreInstance = FirebaseFirestore.instance;

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    controller.dersler.clear();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(128, 92, 225, 88),
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
        child: Center(
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      String tyt = "tyt";
                      controller.docCek(tyt);
                      print("Giden Deger: " + tyt);
                      Get.toNamed(Routes.DERSLER);
                    },
                    child: Container(
                      height: 100,
                      width: 350,
                      decoration: BoxDecoration(color: Colors.indigo.shade900),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        color: Colors.blue.shade400,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Image(
                                image: NetworkImage(
                                  "https://i.ibb.co/3Ch9hvf/asas.png",
                                ),
                              ),
                              title: Text(
                                'TYT',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                              subtitle: Text('Dersler ve Videolu Konular',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () async {
                  await controller.docCek("ayt");
                  Get.toNamed(Routes.DERSLER);
                },
                child: Container(
                  height: 100,
                  width: 350,
                  decoration: BoxDecoration(color: Colors.indigo.shade900),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    color: Colors.blue.shade400,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Image(
                            image: NetworkImage(
                              "https://i.ibb.co/h83Gvh1/dfdf.png",
                            ),
                          ),
                          title: Text(
                            'AYT',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          subtitle: Text('Dersler ve Videolu Konular',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),


              ElevatedButton(onPressed:  () async {
                  
                  Get.toNamed(Routes.SEMIH_DENEME);
                }, child: Text("semih")),
            ],
          ),
        ),
      ),
    );
  }
}
