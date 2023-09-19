void main() {
  // LANGKAH 1
  // var list = [1, 2, 3];
  // assert(list.length == 3); // membuktikan true or false
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  //LANGKAH 3
  // final list = List.filled(5, null);
  // list[1] = "Febryan Rizki Hidayatullah";
  // list[2] = "2141720059";
  // assert(list.length == 5);
  // assert(list[1] == "Febryan Rizki Hidayatullah");
  // assert(list[2] == "2141720059");

  // print(list.length);
  // print(list);

  //PERBAIKAN LANGKAH 3
  final list = List<String?>.filled(5, null);
  list[1] = "Febryan Rizki Hidayatullah";
  list[2] = "2141720059";

  print(list);
}
