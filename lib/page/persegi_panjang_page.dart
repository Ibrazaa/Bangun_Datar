import 'package:chelkydo_ibraza/controller/persegi_panjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangPage extends StatelessWidget {
  PersegiPanjangPage({Key? key}) : super(key: key);
  final PersegiPanjangController _persegiPanjangController = Get.put(PersegiPanjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Persegi Panjang"),
        backgroundColor: Colors.green.shade300,
      ),
      body: ListView(
        children: [
          Image.asset(
            "assets/persegipanjang.png",
            height: 250,
            width: 250,
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 1),
              decoration: BoxDecoration(
                  color: Colors.green.shade300,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Text(
                  "Persegi Panjang adalah bangun datar dua dimensi yang dibentuk oleh dua pasang sisi yang masing-masing sama panjang dan sejajar dengan pasangannya, dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku Persegi panjang merupakan turunan "
                      "dari segi empat yang mempunyai ciri khusus dua sisi sejajar sama panjang dan keempat sudutnya siku-siku (90°).Rusuk terpanjang disebut sebagai panjang.",style: TextStyle(color: Color(0xFFFFFFFF)),)),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.green.shade300,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      onChanged: (value) {
                        _persegiPanjangController.panjang = int.parse(value);
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Panjang",
                        hintText: "Masukkan Panjang",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.blue),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      onChanged: (value) {
                        _persegiPanjangController.lebar = int.parse(value);
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Lebar",
                        hintText: "Masukkan Lebar",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.blue),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0XFF616161),
                            ),
                            onPressed: () {
                              _persegiPanjangController.hitungKeliling();
                            },
                            child: Text("Hitung Keliling", style: TextStyle(color: Color(0xFFFFFFFF)),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0XFFFFFEA00),
                            ),
                            onPressed: () {
                              _persegiPanjangController.hitungLuas();
                            },
                            child: Text("Hitung Luas",style: TextStyle(color: Color(0xFFFFFFFF)),)),
                      ),
                    ],
                  ),
                ],
              )),
          Container(
            padding:
              const EdgeInsets.fromLTRB(50, 15, 50, 140),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 1),
              decoration: BoxDecoration(
                  color: Color(0XFFFFB74D),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Hasil :",style: TextStyle(color: Color(0xFFFFFFFF)),
                    ),
                  ),
                  Obx(() => Text(_persegiPanjangController.hasil.value,style: TextStyle(color: Color(0xFFFFFFFF)),)),
                  Text("========================",style: TextStyle(color: Color(0xFFFFFFFF)),),
                  Text("Thank you",style: TextStyle(color: Color(0xFFFFFFFF)),),
                ],
              )),
        ],
      ),
    );
  }
}
