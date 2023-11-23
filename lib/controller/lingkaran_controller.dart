import 'package:get/get.dart';

class LingkaranController extends GetxController{
  int jari = 0;
  final hasil = "".obs;

  void hitungLuas(){
    num r = jari%7;
    num p;
    if(r==1){
      p = 314/100;
    }else{
      p= 22/7;
    }
    num hitungluas = p*jari*jari;
    hasil.value = "Hasil Perhitungan luas dari π x $jari kuadrat adalah $hitungluas";
  }

  void hitungKeliling(){
    num  r = jari%7;
    num p;
    if(r==1){
      p=314/100;
    }else{
      p=22/7;
    }
    num hitungkeliling = p*jari*2;
    hasil.value = "Hasil Perhitungan keliling dari π x $jari x 2 adalah $hitungkeliling";
  }

}