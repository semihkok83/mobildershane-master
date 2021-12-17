import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/semih_deneme_controller.dart';

class SemihDenemeView extends GetView<SemihDenemeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SemihDenemeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.white30,
          child: GridView.count(
              crossAxisCount: 4,
              childAspectRatio: 1.0,
              padding: const EdgeInsets.all(1.0),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              children: <String>[
                'https://lafgaf.com/uploads/images/image_750x415_5f63aad5286d9.jpg',
                'https://www.parapiyasasi.com/wp-content/uploads/2021/01/gift-cards-apple.png',
                'https://mediacat.com/wp-content/uploads/2013/04/son-50-yilinn-en-iyi-logolari-02.jpg',
                'https://www.iienstitu.com/uploads/blog%20yaz%C4%B1lar%C4%B1-%20haziran%20(2020)/harika-tasarima-sahip-5-marka-logosu.jpeg',
                 'https://mediacat.com/wp-content/uploads/2013/04/son-50-yilinn-en-iyi-logolari-02.jpg',
                'https://www.iienstitu.com/uploads/blog%20yaz%C4%B1lar%C4%B1-%20haziran%20(2020)/harika-tasarima-sahip-5-marka-logosu.jpeg',
                'https://lafgaf.com/uploads/images/image_750x415_5f63aad5286d9.jpg',
                'https://www.parapiyasasi.com/wp-content/uploads/2021/01/gift-cards-apple.png',
               
              ].map((String url) {
                return GridTile(child: Image.network(url, fit: BoxFit.cover));
              }).toList()),
        ),
      ),
    );
  }
}
