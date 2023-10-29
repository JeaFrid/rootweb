import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeadesing/jeadesing.dart';
import 'package:rootweb/page/newpage.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return NewPage(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            textAlign: TextAlign.left,
            """
        RootWeb, bilgiyi paylaşma ve iletişim kurma tutkusuyla yola çıkan bir yayıncıdır. Biz, haberleri en geniş kitlelere ulaştırmanın yanı sıra, bilgiyi paylaşarak, bilinci artırarak ve toplumu bilgilendirerek dünya çapında bir fark yaratmayı amaçlıyoruz.
        
        Köklü Geçmiş ve Deneyim
        
        RootWeb, gazetecilik ve medya dünyasında köklü bir geçmişe sahip bir ekiple yönetilmektedir. Tecrübeli gazeteciler, yazılı basın ve dijital medya konularında derin bir deneyime sahiptir. Bu deneyim, köklü bir gazetecilik geleneği ile güçlendirilmiştir.
        
        Dijital Dönüşüm ve Teknoloji
        
        RootWeb, bilgiyi daha geniş kitlelere ulaştırmanın ve okuyucularımızın beklentilerini karşılamanın en son teknoloji ve dijital dönüşüm uygulamalarını benimsemektedir. Sosyal medya platformları, web siteleri ve diğer dijital araçlar aracılığıyla haberleri etkili bir şekilde yayınlamak için teknolojiyi kullanıyoruz.
        
        Çeşitlilik ve Tarafsızlık
        
        RootWeb, çeşitliliğe ve tarafsızlığa büyük önem verir. Haberleri, farklı bakış açılarına saygı göstererek sunarız ve herkesin sesini duyurmasını destekleriz. Bu, bilginin zenginliğini ve farklılığını kutladığımız anlamına gelir.
        
        Toplum ve Sorumluluk
        
        Topluma karşı sorumluluklarımızın bilincindeyiz. Köklü bir medya platformu olarak, bilgiyi doğru ve tarafsız bir şekilde sunmak, insan haklarına saygı göstermek ve toplumsal sorunlara duyarlı bir şekilde yaklaşmak misyonumuzun bir parçasıdır.
        
        Geleceğe Bakış
        
        RootWeb, bilgiyi kökten değiştirme vizyonu ile hareket eder. Dünya çapında daha fazla insanı bilgilendirmek, eğitmek ve ilham vermek için çalışıyoruz. Gelecekte, daha fazla hedef kitleye ulaşmak ve daha fazla bilgiyi paylaşmak için çabalayacağız.
        
        Bize Katılın
        
        RootWeb ailesine katılın, bilginin köklerini keşfedin ve daha bilinçli bir toplumun bir parçası olun. Bizimle iletişime geçin, haberlerinizi bizimle paylaşın ve bilgiyi köklendirin.
        
        RootWeb - Bilgiyi Kökten Değiştirme Misyonuyla!
        """,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              color: JDDarkColor.textColor.withOpacity(0.7),
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
