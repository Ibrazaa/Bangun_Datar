import 'package:chelkydo_ibraza/page/lingkaran_page.dart';
import 'package:chelkydo_ibraza/page/persegi_page.dart';
import 'package:chelkydo_ibraza/page/persegi_panjang_page.dart';
import 'package:chelkydo_ibraza/page/segitiga_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.green.shade300,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPage()));
                    }
                    ,child: CustomMenu(title: "Persegi",imageAsset: "assets/persegi.png",))),

                Expanded(child: InkWell( onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SegitigaPage()));
                },
                    child: CustomMenu(title: "Segitiga",imageAsset: "assets/segitiga.png",))),
              ],
            ),
          ), Expanded(
            child: Row(
              children: [
                Expanded(child:InkWell( onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PersegiPanjangPage()));
                },
                    child: CustomMenu(title: "Persegi Panjang",imageAsset: "assets/persegipanjang.png",))),

                Expanded(child: InkWell( onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LingkaranPage()));
                },
                    child: CustomMenu(title: "Lingkaran",imageAsset: "assets/lingkaran.png",))),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
  super.key, required this.imageAsset, required this.title,
  });
  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 100
        ),
        margin:  EdgeInsets.symmetric (horizontal: 16, vertical: 16
        ),
        decoration: BoxDecoration(
          color: Colors.green.shade300,borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            Image.asset(imageAsset,height: 120, width: 100,),
            Text(title),
          ],
        ));
  }
}
