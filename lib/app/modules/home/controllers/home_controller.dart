import 'package:get/get.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

final firestoreInstance = FirebaseFirestore.instance;

class HomeController extends GetxController {
  //TODO: Implement HomeController

  var dersler = [].obs;
  var konular = [].obs;
  List<icerik> icerikList = [];

  void dataCek() {
    firestoreInstance.collection("icerik").get().then((querySnapshot) {
      querySnapshot.docs.forEach((result) {
        print(result.data());
      });
    });
  }

  docCek(String deger) {
    print("Gelen Deger: " + deger);
    firestoreInstance
        .collection("icerik")
        .doc(deger.toString())
        .get()
        .then((value) {
      //print(value.data());
      print(value.data()!["baslik"]);
      dersler.addAll(value.data()!["baslik"].toList());
    });
    update();
  }

  konuCek(String konu) {
    print("Gelen Deger: " + konu);
    firestoreInstance
        .collection("icerik")
        .orderBy(
          "ders" "==" "$konu",
        )
        .get()
        .then((value) {
      print(value.toString());
    });

    /*  firestoreInstance.collection("icerik").doc("Dersler").get().then((value) {
      //print(value.data());
      print(value.data()!["liste"]);

      //dersler.addAll(value.data()!["liste"]["ders"].toList());
      //  toplam  = value.data()!["liste"]["ders"].toList();
  
    }); */
    update();
  }

  void dataekle() {
    firestoreInstance.collection("icerik").doc("TYT").collection("Türkce").add({
      "name": "deneme",
      "age": 50,
      "email": "example@example.com",
      "address": {"street": "street 24", "city": "new york"}
    }).then((value) {
      print(value.id);
    });
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}

class icerik {
  String ders;
  String isim;
  String link;

  icerik(this.ders, this.isim, this.link);
}
