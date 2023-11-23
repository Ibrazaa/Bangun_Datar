import 'package:chelkydo_ibraza/controller/segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage({Key? key}) : super(key: key);
  final SegitigaController _segitigaController = Get.put(SegitigaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Segitiga"),
        backgroundColor: Colors.green.shade300,
      ),
      body: ListView(
        children: [
          Image.asset(
            "assets/segitiga.png",
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
                  "Segitiga sama sisi adalah segitiga yang ketiga sisinya sama panjang. Dalam geometri euklides, segitiga sama sisi juga merupakan equiangular; yaitu, semua tiga sudut internal juga kongruen satu sama lain dan masing-masing 60°. Mereka poligon reguler, dan karena itu dapat juga disebut sebagai segitiga regular.",style: TextStyle(color: Color(0xFFFFFFFF)),)),
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
                        _segitigaController.sisi = int.parse(value);
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Alas",
                        hintText: "Masukkan Alas",
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
                  ), Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      onChanged: (value) {
                        _segitigaController.tinggi = int.parse(value);
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Tinggi",
                        hintText: "Masukkan Tinggi",
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
                              _segitigaController.hitungKeliling();
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
                              _segitigaController.hitungLuas();
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
                  Obx(() => Text(_segitigaController.hasil.value,style: TextStyle(color: Color(0xFFFFFFFF)),)),
                  Text("========================",style: TextStyle(color: Color(0xFFFFFFFF)),),
                  Text("Thank you",style: TextStyle(color: Color(0xFFFFFFFF)),),
                ],
              )),
        ],
      ),
    );
  }
}
