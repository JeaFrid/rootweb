import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeadesing/jeadesing.dart';
import 'package:rootweb/page/newpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return NewPage(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            bottom: 8,
          ),
          child: Text(
            "Root'Web!",
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.w600,
              color: JDDarkColor.textColor,
              fontSize: 22,
            ),
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
              'RootWeb, bilgiyi paylaşma ve iletişim kurma tutkusuyla yola çıkan bir yayıncıdır. Biz, haberleri en geniş kitlelere ulaştırmanın yanı sıra, bilgiyi paylaşarak, bilinci artırarak ve toplumu bilgilendirerek dünya çapında bir fark yaratmayı amaçlıyoruz.',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w400,
                color: JDDarkColor.textColor.withOpacity(0.7),
                fontSize: 14,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: JDButtonModern(
            text: "Sorumluluk Reddi Ve Aydınlatma Metni",
            textStyle: GoogleFonts.poppins(
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushNamed(context, "/clarification");
            },
          ),
        ),
        const Wrap(
          children: [
            JDTButtonitleAndSubtitle(
              title: "Instagram",
              subtitle:
                  "Profesyonel haber yayıncısı ekibimizin platforma özel yaptığı videolar ve görseller ile en doğru ve tarafsız haber kaynağı!",
              width: 200,
            ),
            JDTButtonitleAndSubtitle(
              title: "Telegram",
              subtitle:
                  "Profesyonel haber yayıncısı ekibimizin etkinlikler ve sesli sohbetler düzenlediği, platforma özel yazılı ve görsel çalışmalı en doğru ve tarafsız haber kaynağı!",
              width: 200,
            ),
          ],
        )
      ],
    );
  }
}
