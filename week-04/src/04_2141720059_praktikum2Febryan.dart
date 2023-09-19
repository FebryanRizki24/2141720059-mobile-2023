void main() {
  //LANGKAH 1
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

//LANGKAH 3
  var names1 = <String>{};
  names1.add("Febryan Rizki Hidayatullah"); // menambahkan nama ke var names1
  names1.add("2141720059"); // menambahkan nim ke names1

  Set<String> names2 = {}; // This works, too.
  names2.addAll({"Febryan Rizki Hidayatullah", "2141720059"}); // menambahkan nama sekaligus nim secara langsung ke var names2

  var names3 = {}; // Creates a map, not a set.

  print(names1);
  print(names2);
  print(names3);
}
