import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasil = "".obs;

  void hitungKeliling(){
    int hitung = 4 * sisi;
    hasil.value = "Hasil Perhitungan keliling dari 4 x $sisi adalah $hitung";
  }

  void hitungLuas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil Perhitungan luas dari $sisi x $sisi adalah $hitung";
  }

}