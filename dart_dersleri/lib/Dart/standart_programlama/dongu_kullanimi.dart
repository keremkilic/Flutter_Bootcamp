void main() {
  //1, 2, 3 şeklinde ekran çıktısı
  for(var i = 1; i < 4; i++) {
    print("Döngü 1 : $i");
  }

  // 10 ile 20 arasında çalışsın ama 5'er artsın
  for(var x = 10; x < 21; x+=5) {
    print("Döngü 2 : $x");
  }

  // 20 ile 10 arasında çalışsın ama 5'er azalsın
  for(var y = 20; y > 9; y-=5) {
    print("Döngü 3 : $y");
  }

  print("*********************");
  
  //1, 2, 3 şeklinde ekran çıktısı
  var sayac = 1;

  while(sayac < 4){
    print("Dongu 4 : $sayac");
    sayac++; // sayac+=1; // sayac = sayac + 1;
  }

  print("*********************");

  //1, 2, 3, 4, 5 şeklinde ekran çıktısı
  // BREAK
  for(var i = 1; i < 6; i++) {
    if(i == 3) {
      break;
    }
    print("Dongu 5 : $i");
  }

  print("**********");

  // CONTINUE
  for(var i = 1; i < 6; i++) {
    if(i == 3) {
      continue;
    }
    print("Dongu 6 : $i");
  }
}