void main() {
  //LANGKAH 1
  // var record = ('first', a: 2, b: true, 'last');
  // print(record);

  // var ryan = tukar((2, 5));
  // print(ryan);

//LANGKAH 4
  // Record type annotation in a variable declaration:
  // (String, int) mahasiswa = ('Febryan Rizki Hidayatullah', 2141720059);
  // print(mahasiswa);

// Langkah 5
  var mahasiswa2 = ('Febryan Rizki Hidayatullah', a: 2, b: true, '2141720059');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

//Langkah 3
// (int, int) tukar((int, int) record) {
//   var (a, b) = record;
//   return (b, a);
// }
