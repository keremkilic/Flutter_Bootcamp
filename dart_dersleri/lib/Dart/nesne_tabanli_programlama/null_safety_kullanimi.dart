void main() {
  // Null Safety - Nullable - Optional(Swift)
  // Null : nil(Swift) : NoN

  String str = "Merhaba";

  //Tanımlama
  String? mesaj = null;

  //mesaj = "merhaba";

  //Yöntem 1
  print("Yöntem 1 : ${mesaj?.toUpperCase()}"); // ? : eğer null ise uygulama çözmez.

  //Yöntem 2

  //mesaj = "merhaba";
  //print("Yöntem 2 : ${mesaj!.toUpperCase()}"); // ! : ben bu koda güveniyorum. Sorun olmayacak. (Tanımlama yapmazsan patlayacak)

  //Yöntem 3
  if(mesaj != null) {
    print("Yöntem 3 : ${mesaj.toUpperCase()}"); // en önemli kontrollerden bir tanesi
  } else {
    print("Mesaj null'dur.");
  }
}