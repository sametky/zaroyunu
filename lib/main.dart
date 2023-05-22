import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: SayiSec (),
    );
  }
}

class SayiSec extends StatefulWidget {
  const SayiSec({Key? key}) : super(key: key);

  @override
  State<SayiSec> createState() => _SayiSecState();
}

class _SayiSecState extends State<SayiSec> {
  int birinciZar=0, ikinciZar=0, buton=0;
  String resim="zar1.png";
  String resim2="zar2.png";
  int sayiSec(){
    int sayi = Random().nextInt(6)+1;
    return sayi;
  }
  int resimGetir (int buton){
    if (buton==1){
      switch(birinciZar){
        case 1:
          resim = "zar1.png";
          break;
        case 2:
          resim = "zar2.png";
          break;
        case 3:
          resim = "zar3.png";
          break;
        case 4:
          resim = "zar4.png";
          break;
        case 5:
          resim = "zar5.png";
          break;
        case 6:
          resim = "zar6.png";
          break;

      }
    }
    else {
      switch(ikinciZar) {
        case 1:
          resim2 = "zar1.png";
          break;
        case 2:
          resim2 = "zar2.png";
          break;
        case 3:
          resim2 = "zar3.png";
          break;
        case 4:
          resim2 = "zar4.png";
          break;
        case 5:
          resim2 = "zar5.png";
          break;
        case 6:
          resim2 = "zar6.png";
          break;
      }
    }
    return buton;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zar Oyunu"),
        leading: Icon(Icons.menu_outlined),
      ),
      body: Container(
          color: Colors.black12,
          child: Column(
              children: [
                SizedBox(height:10,),
                ElevatedButton(onPressed: (){
                  setState(() {
                    birinciZar=sayiSec();
                    buton=resimGetir(1);
                  });
                }, child: Text("Zar At!")),
                SizedBox(height:10,),
                Icon(Icons.man, size:80,),
                SizedBox(height:10,),
                Text("Player 1: $birinciZar"),
                SizedBox(height:10,),
                Expanded(child: Image.asset("./images/"+"$resim")),
                Divider(height:20, color: Colors.teal),
                SizedBox(height:10,),
                ElevatedButton(onPressed: (){
                  setState(() {
                    ikinciZar=sayiSec();
                    buton=resimGetir(2);
                  });
                }, child: Text("Zar At!")),
                SizedBox(height:10,),
                Icon(Icons.man, size:80,),
                SizedBox(height:10,),
                Text("Player 2: $ikinciZar"),
                SizedBox(height:10,),
                Expanded(child: Image.asset("./images/"+"$resim2")),
              ]
          )

      ),
    );
  }
}