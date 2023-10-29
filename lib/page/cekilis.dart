import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeadesing/jeadesing.dart';
import 'package:rootweb/page/newpage.dart';

import '../utils/cekilis.dart';

class Cekilis extends StatefulWidget {
  const Cekilis({super.key});

  @override
  State<Cekilis> createState() => _CekilisState();
}

class _CekilisState extends State<Cekilis> {
  final YeniBirEvreneYolculuk yeniBirEvreneYolculuk = YeniBirEvreneYolculuk();
  bool cekilisVisible = false;
  bool cekilisBtnVisible = false;
  String katilimcilar = "";

  List kazanan1 = [];
  List kazanan2 = [];
  List yedek1 = [];
  List yedek2 = [];
  Future<void> cekilisBtnFun() async {
    Dio dio = Dio();
    var ipGet = await dio.get("https://api.ipify.org/");
    String ip = ipGet.data;
    setState(() {
      if (ip == "188.119.36.11") {
        cekilisBtnVisible = true;
      } else {
        cekilisBtnVisible = false;
      }
      YeniBirEvreneYolculuk ybey = YeniBirEvreneYolculuk();
      for (var element in ybey.katilimcilar) {
        katilimcilar = "$katilimcilar, ${element[0]}";
      }
    });
  }

  @override
  void initState() {
    super.initState();

    kazanan1 = yeniBirEvreneYolculuk.katilimcilar[
        Random().nextInt(yeniBirEvreneYolculuk.katilimcilar.length)];
    kazanan2 = yeniBirEvreneYolculuk.katilimcilar[
        Random().nextInt(yeniBirEvreneYolculuk.katilimcilar.length)];
    yedek1 = yeniBirEvreneYolculuk.katilimcilar[
        Random().nextInt(yeniBirEvreneYolculuk.katilimcilar.length)];
    yedek2 = yeniBirEvreneYolculuk.katilimcilar[
        Random().nextInt(yeniBirEvreneYolculuk.katilimcilar.length)];
    cekilisBtnFun();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              page(context, constraints),
              Visibility(
                visible: cekilisVisible,
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height,
                  color: JDDarkColor.extraDarkColor.withOpacity(0.6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width < 800
                                ? MediaQuery.sizeOf(context).width * 0.8
                                : MediaQuery.sizeOf(context).width * 0.6,
                            padding: const EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              color: JDDarkColor.extraDarkColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(
                                  image: const AssetImage("assets/win.jpg"),
                                  width: MediaQuery.sizeOf(context).width < 800
                                      ? MediaQuery.sizeOf(context).width * 0.8
                                      : MediaQuery.sizeOf(context).width * 0.4,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Çekiliş Sonuçları",
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w600,
                                    color: JDDarkColor.textColor,
                                    fontSize: 14,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "İlk Kazanan: ",
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                color: JDDarkColor.textColor,
                                                fontSize: 10,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "${kazanan1[1]} tarihinde yazan ${kazanan1[0]}",
                                                  style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w400,
                                                    color:
                                                        JDDarkColor.textColor,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "İkinci Kazanan: ",
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                color: JDDarkColor.textColor,
                                                fontSize: 10,
                                              ),
                                            ),
                                            Text(
                                              "${kazanan2[1]} tarihinde yazan ${kazanan2[0]}",
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w400,
                                                color: JDDarkColor.textColor,
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "İlk Yedek Kazanan: ",
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                color: JDDarkColor.textColor,
                                                fontSize: 10,
                                              ),
                                            ),
                                            Text(
                                              "${yedek1[1]} tarihinde yazan ${yedek1[0]}",
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w400,
                                                color: JDDarkColor.textColor,
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "İkinci Yedek Kazanan: ",
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                color: JDDarkColor.textColor,
                                                fontSize: 10,
                                              ),
                                            ),
                                            Text(
                                              "${yedek2[1]} tarihinde yazan ${yedek2[0]}",
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w400,
                                                color: JDDarkColor.textColor,
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: JDButtonModern(
                                            text: "Kapat",
                                            textStyle: GoogleFonts.poppins(
                                              color: Colors.white,
                                            ),
                                            onTap: () {
                                              setState(() {
                                                cekilisVisible = false;
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  NewPage page(BuildContext context, BoxConstraints constraints) {
    return NewPage(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            bottom: 8,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: const AssetImage("assets/yenibirevreneyolculuk.jpg"),
                  width: MediaQuery.sizeOf(context).width > 800
                      ? MediaQuery.sizeOf(context).width * 0.1
                      : MediaQuery.sizeOf(context).width * 0.2,
                ),
              ),
              Text(
                "Yeni Bir Evrene Yolculuk",
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  color: JDDarkColor.textColor,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 0.0,
            bottom: 8,
          ),
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.6,
            child: Text(
              textAlign: TextAlign.center,
              "Yeni Bir Evrene Yolculuk, Paralel Evrenler Serüveni serisinin ilk kitabı ve en önemli eseridir. Yuris Harrison’ın hayatına bakış attığımız bu kitapta, kuantum evrenler hakkında bilgi ediniyor, birkaç kuantum aracıyla kayda değer bir yolculuğa çıkıyoruz. Yolculuğumuz boyunca paralel evrenlerin ve Yuris Harrison’ın Ayna Evrenler teorisinin bize neler öğretebileceğini anlıyoruz. Bu yolculuk bize Yuris’in başka bir versiyonuyla, deli dâhi milyarder bir karakterin ve 2001 Afganistan Savaşı gazisi bir karakterin nasıl bir araya geldiğini gösterecek. Hazırsanız sizi önce 2024’ün yazına, ardından da 1950’lerin kışına götürecek bir yolculuğa çıkaralım!",
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w400,
                color: JDDarkColor.textColor.withOpacity(0.7),
                fontSize: 12,
              ),
            ),
          ),
        ),
        Visibility(
          visible: cekilisBtnVisible,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: JDButtonModern(
              text: "Çekiliş Yap",
              textStyle: GoogleFonts.poppins(
                color: Colors.white,
              ),
              onTap: () {
                setState(() {
                  kazanan1 = yeniBirEvreneYolculuk.katilimcilar[Random()
                      .nextInt(yeniBirEvreneYolculuk.katilimcilar.length)];
                  kazanan2 = yeniBirEvreneYolculuk.katilimcilar[Random()
                      .nextInt(yeniBirEvreneYolculuk.katilimcilar.length)];
                  yedek1 = yeniBirEvreneYolculuk.katilimcilar[Random()
                      .nextInt(yeniBirEvreneYolculuk.katilimcilar.length)];
                  yedek2 = yeniBirEvreneYolculuk.katilimcilar[Random()
                      .nextInt(yeniBirEvreneYolculuk.katilimcilar.length)];
                  cekilisVisible = true;
                });
              },
            ),
          ),
        ),
        Text(
          "Katılımcılar",
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w600,
            color: JDDarkColor.textColor,
            fontSize: 18,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 0.0,
            bottom: 8,
          ),
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.6,
            child: Text(
              textAlign: TextAlign.center,
              katilimcilar,
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w400,
                color: JDDarkColor.textColor.withOpacity(0.7),
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
