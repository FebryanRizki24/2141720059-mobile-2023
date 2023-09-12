void main() {
  String nama = "Febryan Rizki Hidayatullah";
  String nim = "2141720059";

  bool bilPrima(int angka) {
    if (angka <= 1) {
      return false; // Bilangan negatif dan 1 bukan bilangan prima.
    }

    for (int i = 2; i <= angka / 2; i++) {
      if (angka % i == 0) {
        return false; // Terdapat faktor selain 1 dan dirinya sendiri.
      }
    }

    return true; // Jika tidak ada faktor selain 1 dan dirinya sendiri, maka bilangan tersebut adalah bilangan prima.
  }

  for (int i = 1; i <= 201; i++) {
    if (bilPrima(i)) {
      print("$i -> nama = $nama, nim = $nim");
    } else {
      print(i);
    }
  }
}
