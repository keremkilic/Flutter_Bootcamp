void main() {
  int a = 40;
  int b = 50;

  int x = 90;
  int y = 80;

  print("a == b : ${a==b}");
  print("a != b : ${a!=b}");
  print("a > b : ${a>b}");
  print("a >= b : ${a>=b}");
  print("a < b : ${a<b}");
  print("a <= b : ${a<=b}");

  print("a > b || x > y : ${a > b || x > y}"); // OR(veya) : false - false : false olur, diğer durumlarda true olur.
  print("a > b && x > y : ${a > b && x > y}"); // AND(ve) : true - true : true olur, diğer durumlarda false olur.

}