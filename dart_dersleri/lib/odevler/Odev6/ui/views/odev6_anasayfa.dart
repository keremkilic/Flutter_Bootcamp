import 'package:dart_dersleri/odevler/Odev6/data/entity/odev6_filmler.dart';
import 'package:dart_dersleri/odevler/Odev6/ui/views/odev6_detay.dart';
import 'package:flutter/material.dart';

class Odev6AnaSayfa extends StatefulWidget {
  const Odev6AnaSayfa({Key? key}) : super(key: key);

  @override
  State<Odev6AnaSayfa> createState() => _Odev6AnaSayfaState();
}

class _Odev6AnaSayfaState extends State<Odev6AnaSayfa> {
  int selectedIndex = 0;


  Future<List<Odev6Filmler>> filmGetir() async {
    var odev6Filmler = <Odev6Filmler>[];
    var f1 = Odev6Filmler(
        "Köle Django’nun Alman asıllı ödül avcısı Dr. King Schultz ile yolunun kesişmesiyle başlıyor. "
        "Django, eski efendisini ölü ya da diri ele geçirmek isteyen Schultz ile anlaşmaya varır ve özgürlüğü karşısında "
        "Brittle kardeşleri kendisine getirme sözü verir. Görev başarıyla tamamlanır ama ikilinin yolları ayrılmaz "
        "Schultz ve Django beraber Güney’in en çok aranan suçlularının peşine düşerler… ‘Avlanma’ hünerini her geçen gün geliştiren "
        "Django’nun artık tek bir hedefi vardır: köle ticareti yüzünden kaybettiği eşi Broomhilda’yı bulmak ve onu kurtarmak... "
        "Bu hedef onları kötü şöhretli “Candyland” çiftliğine ve çiftliğin sahibi olan Calvin Candie’ye götürecektir"
        "Sinemanın dahi çocuğu, Oscarlı Quentin Tarantino'nun uzun süre üzerinde çalıştığı Spagetti Western türündeki projenin başrollerinde "
        "Jamie Foxx, Christoph Waltz yer alırken, Kerry Washington, Leonardo DiCaprio ve Samuel Jackson gibi yıldızlardan oluşan oyuncu kadrosu göz dolduruyor",
        film_id: 1,
        film_adi: "Django",
        film_resim_adi: "django.png",
        film_sure: "2s 44dk");
    var f2 = Odev6Filmler(
        "Leonardo DiCaprio bu yapımda, çok yetenekli bir hırsız olan 'Dom Cobb' ile karşımızda. Uzmanlık alanı, "
        "zihnin en karanlık ve savunmasız olduğu rüya görme anında, bilinçaltının derinliklerindeki değerli sırları "
        "çekip çıkarmak ve onları çalmaktır. Cobb'un bu nadir insanlarda görülebilecek yeteneği, bu ender rastgelinebilecek mahareti, "
        "onu kurumsal casusluğun tehlikeli yeni dünyasında aranan bir oyuncu yapmıştır. Aynı zamanda bu durum onu uluslararası bir "
        "kaçak yapmış ve sevdiği herşeye malolmuştur. Cobb'a içinde bulunduğu durumdan kurtulmasını sağlayacak bir fırsat sunulur. "
        "Ona hayatını geri verebilecek son bir iş; tabi eğer imkansız 'başlangıç'ı tamamlayabilirse. Mükemmel soygun yerine, "
        "Cobb ve takımındaki profesyoneller bu sefer tam tersini yapmak zorundadır; "
        "görevleri bir fikri çalmak değil onu yerleştirmektir. Eğer başarırlarsa, mükemmel suç bu olacaktır.",
        film_id: 2,
        film_adi: "Inception",
        film_resim_adi: "inception.png",
        film_sure: "2s 28dk");
    var f3 = Odev6Filmler(
        "Yıldızlararası'nda, teknik bilgisi ve becerisi yüksek olan Cooper, geniş mısır tarlalarında çiftçilik yaparak geçinmektedir; "
        "amacı iki çocuğuna güvenli bir hayat sunmaktır. Onlarla yaşayan Büyükbaba Donald çocuklara göz kulak olurken, "
        "henüz 10 yaşındaki kızı Murph şaşırtıcı bir zekaya sahiptir. Geçmişte bıraktığı biliminsanı kariyerini özleyen Cooper'un karşısına "
        "bir gün beklenmedik bir teklif çıkar ve ailesinin, dahası insanlığın güvenliği için zorlu bir karar alması gerekir..."
        "Christopher Nolan'ın, Jonathan Nolan ile kaleme aldığı ve yönetmenliğini sırtladığı filmin yıldız oyunculardan oluşan oyuncu kadrosunda "
        "Matthew McConaughey, Anne Hathaway, Jessica Chastain, Matt Damon, Bill Irwin, John Lithgow ve Michael Caine gibi isimler yer alıyor. "
        "Bilimkurgunun yanı sıra dramatik öğeler de içeren filmin senaryosu Fizikçi Kip S. Thorne'nun evrendeki 'Solucan Delikleri' teorisinden ilham alıyor.",
        film_id: 3,
        film_adi: "Interstellar",
        film_resim_adi: "interstellar.png",
        film_sure: "2s 49dk");
    var f4 = Odev6Filmler(
        "Western türündeki film, İç Savaş'ın bitmesinden altı, sekiz ya da 12 yıl sonra, bir grup yabancının, tipiden kurtulmak için dağdaki "
        "bir konaklama yerine sığınmasını ve gizli bağlılıkların hayatta kalmalarını tehdit ettiğini anlamalarını konu ediyor. The Hateful Eight’te "
        "bir posta arabası, kış soğuğu yaşayan Wyoming’den geçer. Yolcular, cellat John Ruth ve yakaladığı kaçak Daisy Domergue, Domergue'nun adalete "
        "teslim edilmesi için Ruth'un 'Cellat' olarak bilindiği Red Rock kasabasına hızla yol alır. Yolda iki yabancıyla tanışırlar: Biri, kötü şöhretli "
        "bir ödül avcısı olan, zenci bir eski federasyon askeri Binbaşı Marquis Warren ve diğeri de kasabanın şerifi olduğunu iddia eden güneyli haydut "
        "Chris Mannix. Tipide yollarını kaybeden Ruth, Domergue, Warren ve Mannix, bir dağ geçidindeki konaklama yeri olan Minnie's Haberdashery'ye sığınır. "
        "Minnie's'e vardıklarında onları mekânın sahibi değil, dört yabancı karşılar: Minnie annesini ziyaret ederken Minnie's'e göz kulak olan Bob, Red Rock celladı "
        "Oswaldo Mobray, Kovboy Joe Gage ve Müttefik Sanford Smithers. Fırtına, dağdaki konaklama yerini etkisi altına alırken, sekiz gezginimiz, Red Rock'a hiç varamayabileceklerini "
        "öğrenir.Usta yönetmen Quentin Tarantino'nun son projesi olan 'The Hateful Eight' senaryosunun internete sızması sonrasında Tarantino tarafından iptal edimişti. Ancak daha sonra "
        "çekilmesine karar verilen filmin başrollerinde Samuel L. Jackson, Kurt Russell, Jennifer Jason Leigh, Walton Goggins, Michael Madsen, Tim Roth yer alıyor. Filmin başyapımcıları "
        "Harvey Weinstein, Bob Weinstein ve Georgia Kacandes, yardımcı yapımcılar da Coco Francini ve William Paul Clark.",
        film_id: 4,
        film_adi: "The Hateful Eight",
        film_resim_adi: "thehatefuleight.png",
        film_sure: "2s 48dk");
    var f5 = Odev6Filmler(
        "Piyanist, İkinci Dünya Savaşı sırasında yaşanan gerçek bir dramı konu alır. Polonya’lı ünlü piyanist "
        "Wladyslaw Szpilman’ın anılarını anlattığı aynı isimli kitaptan sinemaya uyarlanan film, Nazi işgali altındaki "
        "Polonya’da yaşamanın imkansızlaştırıldığı bir dönemde, bir şekilde esir kampına gitmekten kurtulan ünlü piyanistin Varşova’nın "
        "kenar mahallelerindeki hayatta kalma mücadelesine odaklanır. Varoşlarda tam anlamıyla sefil bir hayat süren müzisyen, diğer halkla birlikte, "
        "kıtlığa ve aşağılanmalara maruz kalsa da kahramanca mücadele edecektir. Günü gelip oradan kaçma şansı bulduğundaysa başkentin harabelerine sığınacak, "
        "beklemediği bir anda gelen bir yardımla umudunu yeniden kazanacaktır."
        "Film, En İyi Erkek Oyuncu dalında Oscar alan Adrien Brody'nin de filmografisinin en güçlü işlerinden biri.",
        film_id: 5,
        film_adi: "The Pianist",
        film_resim_adi: "thepianist.png",
        film_sure: "2s 28dk");
    var f6 = Odev6Filmler(
        "Nuri Bilge Ceylan, bu filmiyle kentsel kaygılarını bir kenara bırakıp, tekrar taşranın sıkıntılı dünyasına ama bu sefer bir "
        "cinayet hikayesinin gerilimi ile dönüyor... Bir doktor ile bir savcının 12 saatlik gerilimli öyküsünün peliküle aktarıldığı "
        "filmin başrollerinde Muhammet Uzuner, Yılmaz Erdoğan ve Taner Birsel yer alıyor. Senaryoda Ebru ve Nuri Bilge Ceylan'ın yanı sıra "
        "Ercan Kesal'ın da imzası var. Yolların tek düzeliği ve kasabanın insana yeni bir şey sunmamasının sıradanlığını fona alan "
        "Bir Zamanlar Anadolu'da adıyla da klasiklere gönderme taşıyor. Bu sene Cannes'da Altın Palmiye için yarışan film, Nuri Bilge Ceylan'a "
        "Uzak ve Üç Maymun zaferlerinden sonra Cannes'da Büyük Jüri Ödülü'nü de kazandırdı.",
        film_id: 6,
        film_adi: "Anadoluda",
        film_resim_adi: "anadoluda.png",
        film_sure: "2s 37dk");

    odev6Filmler.add(f1);
    odev6Filmler.add(f2);
    odev6Filmler.add(f3);
    odev6Filmler.add(f4);
    odev6Filmler.add(f5);
    odev6Filmler.add(f6);
    return odev6Filmler;
  }

  //TODOS: https://www.uplabs.com/posts/movies-e0f9c1ea-a644-4666-857b-10933c4089ca

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
          title: const Text("NEKSFLIKS",
              style: TextStyle(color: Colors.red, fontSize: 27)),
          centerTitle: true,
          backgroundColor: Colors.transparent.withOpacity(0.1)),
      body: FutureBuilder<List<Odev6Filmler>>(
        future: filmGetir(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var films = snapshot.data;
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1 / 1.8),
              itemCount: films!.length,
              itemBuilder: (context, index) {
                var film = films[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Odev6Detay(filmler: film),
                        ));
                  },
                  child: Card(
                    color: Colors.grey.withOpacity(0.2),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 5.0, top: 3.0, bottom: 3.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("resimler/${film.film_resim_adi}"),
                          Row(
                            children: [
                              Text(
                                film.film_adi,
                                style: const TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                              const Spacer(),
                              Text(
                                film.film_sure,
                                style: const TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Ana Sayfa",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: "Arama",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download_outlined),
            label: "Download",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "Menu",
          ),
        ],
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });

        },
      ),
    );
  }
}
