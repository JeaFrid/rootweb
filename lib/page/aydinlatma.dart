import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeadesing/jeadesing.dart';
import 'package:rootweb/page/newpage.dart';

class Aydinlatma extends StatelessWidget {
  const Aydinlatma({super.key});

  @override
  Widget build(BuildContext context) {
    return NewPage(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            textAlign: TextAlign.left,
            """
        Gizlilik Sözleşmesi, Sorumluluk Reddi ve Aydınlatma Metni
        Rootweb olarak hizmet veren web sitesi, mobil uygulama veya platform (Telegram, Instagram), kullanıcılarının kişisel verilerini gizlilikle işlemektedir. Bu Gizlilik Sözleşmesi, kişisel verilerin nasıl toplandığını, işlendiğini ve korunduğunu açıklamaktadır. Kullanıcılar, bu Sözleşme'yi okuyup anladıklarını kabul ederler.
        
        • Habercilik ve Yayıncılık Hakkında
        
        Paylaşılan tüm haber ve yayınlar, çeşitli kaynak ve gazetelerde paylaşıldığı/yayınlandığı gibi platformlarımıza aktarılır. Gerçeği yansıtmayan tüm haber ve yayınlardan, kaynağını sunduğumuz gazete, web sitesi ve platform sorumludur. Rootweb yöneticileri ve yayıncılarının çözüm yolu aşağıda belirtildiği gibi olup, sorumlu tutulamazlar.
        
        • Gerçeği Yansıtmayan Haber/Yayın İçin Çözüm Yolumuz;
        
        1) Kaynaklardan haberi toplarız.
        2) Hızlı bir biçimde doğrulamak için çeşitli kaynakları kontrol ederiz.
        3) Haberi platformlarımıza göndeririz.
        4) Haberi elimizden geldiğince takip ederiz.
        5) Kaynak veya başka bir yayın haberi kesin suretle yalanlarsa, tekzip göndererek kullanıcılara bildiririz.
        6) Gerektiği durumlarda haberi kaldırır veya yalanlayan bir metinle gerçeği yansıtmadığını bildiririz.
        
        • Kullanıcı/Okuyucu Gizliliği
        
        Hiçbir okurumuzun özel bilgilerini halka açık bir etkinliğimizde ve yayınımızda açıklayarak ifşa etmeyiz. Ancak platformlarımız içerisinde kendi bilgilerini ifşalaması veya başka bir kullanıcının ifşalaması halinde RootWeb sorumlu tutulmayacaktır.
        
        • Platformlarda Bağımsızlık ve Tarafsızlık
        
        RootWeb bağımsız ve tarafsız haber yapmaya çalışan yayıncılardan oluşmaktadır. Haberlerimiz şu kaynakları ele alabilir;
         - HaberTürk, CNN Haber, dogrula.org, TRT Haber, AA, Milliyet gibi haber sayfaları.
         - Solcu Gazete, Sağcı Gazete, Twitter (X), BGY gibi sosyal medya yayıncıları.
         - Instagram, Twitter gibi platformlar.
        
         • Platforma Özel Yetkilendirme
        
        RootWeb, yayın akışını sürdürebilmek için bağımsız ve tarafsız haber sağlayabilecek sıradan insanlarla çalışır. Yapılan haberler ve yayınlar RootWeb yönetim ekibinin elinden veya gözetiminden geçmeden yayınlanabilir. Bu gibi durumlarda meydana gelecek yasal süreçlerde RootWeb'in diğer yayın ve haber yayıncıları sorumlu olmamakla beraber yayını yapan yayıncı sorumlu olacaktır.
        
        • Yaşa Göre Uygunluk ve Çocukların Kullanımı Hakkında
        
        Rootweb içeriklerinin tamamı 15 yaş ve üzeri kişilere hitap etmektedir. 15 yaş ve altı kullanıcıların haberleri ve yayınları izlemeleri ve kullanmaları RootWeb tarafından desteklenmemekte ve yasaklanmaktadır. Kullanımı halinde sorumluluk RootWeb'e ait olmayacaktır.
        
        • Bu Metnin Geçerliliği Hakkında
        Bu metin 29 Ekim 2023 tarihinden itibaren geçerli olup, yeniden düzenlebileceğinden dolayı bu metnin takibini yapmak okur ve kullanıcıların sorumluluğundadır.
        
        
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
