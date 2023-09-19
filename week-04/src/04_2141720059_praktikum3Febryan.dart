void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

// LANGKAH 3
  var mhs1 = Map<String, String>();
  gifts['first'] =
      'partridge'; // harusnya mhs1 bukan gifts begitupun dibawahnya
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print(mhs1); // akan kosong karena assignment masih menggunakan var gifts
  print(mhs2); // akan kosong karena assignment masih menggunakan var nobleGases

  print("perbaikan mhs1 dan mhs2");
  //perbaikan
  mhs1['first'] = 'partridge';
  mhs1['second'] = 'turtlmhs2edoves';
  mhs1['fifth'] = 'golden rings';

  mhs2[2] = 'helium';
  mhs2[10] = 'neon';
  mhs2[18] = 'argon';

  print(mhs1);
  print(mhs2);

 // Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2)
  print("=============================");
  print("Tambahkan elemen nama dan nim");
  print("=============================");
  gifts['Nama'] = 'Febryan Rizki Hidayatullah';
  gifts['Nim'] = '2141720059';

  nobleGases[24] = 'Febryan Rizki Hidayatullah';
  nobleGases[25] = '2141720059';

  mhs1['Nama'] = 'Febryan Rizki Hidayatullah';
  mhs1['Nim'] = '2141720059';

  mhs2[24] = 'Febryan Rizki Hidayatullah';
  mhs2[25] = '2141720059';

  print('gifts = $gifts');
  print('nobleGases = $nobleGases');
  print('mhs1 = $mhs1');
  print('mhs2 =  $mhs2');
}
