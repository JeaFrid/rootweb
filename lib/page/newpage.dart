import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeadesing/jeadesing.dart';

class NewPage extends StatelessWidget {
  final List<Widget> children;
  const NewPage({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: JDDarkColor.backgroundColor,
      body: JDBackgroundPhoto(
        image: const AssetImage("assets/bg.jpg"),
        opacity: 0.2,
        child: Column(
          children: [
            Expanded(
              child: JDBody(
                scrollable: true,
                children: [
                  JDTopBar(
                    widgetLogo: MediaQuery.sizeOf(context).width > 800
                        ? InkWell(
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              Navigator.pushNamed(context, "/home");
                            },
                            child: const Image(
                              image:
                                  AssetImage("assets/rootweb_transparent.png"),
                              width: 80,
                            ),
                          )
                        : Column(
                            children: [
                              const SizedBox(height: 6),
                              InkWell(
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () {
                                  Navigator.pushNamed(context, "/home");
                                },
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "R o o t W e b",
                                  style: TextStyle(
                                    color: JDDarkColor.textColor,
                                    fontSize: 26,
                                    fontFamily: "Arial",
                                  ),
                                ),
                              ),
                            ],
                          ),
                    leftIconOnTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JDSideMenus(
                            page: NewPage(children: children),
                            children: [
                              InkWell(
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () {
                                  Navigator.pushNamed(context, "/home");
                                },
                                child: const Image(
                                  image: AssetImage(
                                      "assets/rootweb_transparent.png"),
                                  width: 50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: JDButtonModern(
                                  text: "RootWeb",
                                  textStyle: GoogleFonts.poppins(
                                    color: Colors.white,
                                  ),
                                  onTap: () {
                                    Navigator.pushNamed(context, "/home");
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: JDButtonModern(
                                  text: "Çekilişler",
                                  textStyle: GoogleFonts.poppins(
                                    color: Colors.white,
                                  ),
                                  onTap: () {
                                    Navigator.pushNamed(context, "/raffle");
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: JDButtonModern(
                                  text: "Bize Ulaş",
                                  textStyle: GoogleFonts.poppins(
                                    color: Colors.white,
                                  ),
                                  onTap: () {
                                    Navigator.pushNamed(context, "/home");
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: JDButtonModern(
                                  text: "Hakkımızda",
                                  textStyle: GoogleFonts.poppins(
                                    color: Colors.white,
                                  ),
                                  onTap: () {
                                    Navigator.pushNamed(context, "/about");
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: JDButtonModern(
                          text: "RootWeb",
                          textStyle: GoogleFonts.poppins(
                            color: Colors.white,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/home");
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: JDButtonModern(
                          text: "Çekilişler",
                          textStyle: GoogleFonts.poppins(
                            color: Colors.white,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/raffle");
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: JDButtonModern(
                          text: "Bize Ulaş",
                          textStyle: GoogleFonts.poppins(
                            color: Colors.white,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/home");
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: JDButtonModern(
                          text: "Hakkımızda",
                          textStyle: GoogleFonts.poppins(
                            color: Colors.white,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/about");
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: children,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    'Powered by JeaFriday | RootWeb',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: JDDarkColor.textColor.withOpacity(0.4),
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Tüm hakları saklıdır.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: JDDarkColor.textColor.withOpacity(0.4),
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class JDSideMenus extends StatelessWidget {
  final Widget page;
  final List<Widget> children;
  const JDSideMenus({
    super.key,
    required this.page,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: JDDarkColor.backgroundColor,
      body: Stack(
        children: [
          page,
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            color: Colors.black.withOpacity(0.3),
          ),
          Row(
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width * 0.6,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 10, 10, 10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Gölge rengi
                      spreadRadius: 10, // Gölgenin yayılma miktarı
                      blurRadius: 7, // Gölge bulanıklığı
                      offset: const Offset(
                          4, 0), // Gölgenin yönü (sağ tarafa doğru)
                    ),
                  ],
                ),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return JeaVerticalScrollViews(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: children,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              InkWell(
                onTap: () => Navigator.pop(context),
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width * 0.4,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
