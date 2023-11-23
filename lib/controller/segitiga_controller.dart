import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int sisi = 0;
  int tinggi = 0;
  final hasil = "".obs;

  void hitungKeliling(){
    num hitung = (sisi*tinggi)/2;
    hasil.value = "Hasil Perhitungan keliling dari ($sisi*$tinggi)/2 adalah $hitung";
  }

  void hitungLuas(){
    int hitung = 3 * sisi;
    hasil.value = "Hasil Perhitungan luas dari 3 x $sisi adalah $hitung";
  }

}