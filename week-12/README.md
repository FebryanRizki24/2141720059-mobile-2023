# Nama : Febryan Rizki Hidayatullah
# Kelas : TI-3F
# Nim : 2141720059
# WEEK 12
~~
# Praktikum 1
### Soal 1
Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
```dart
return MaterialApp(
      title: 'Flutter Demo Febryan',
```

### Soal 2
Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.  
<img src="docs/soal2-1.jpg"></img>

Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. Lalu lakukan commit dengan pesan **"W12: Soal 2"**.
<img src="docs/soal2-2.jpg"></img>

### Soal 3
- Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!  

result = value.body.toString().substring(0, 450);: Membuat substring dari 0 hingga 449 karakter dari nilai body (mungkin response dari suatu permintaan HTTP atau sumber data lainnya) yang dikonversi ke dalam bentuk string. Substring ini kemudian disimpan dalam variabel result.

catchError((_) {...}): Ini digunakan untuk menangani kesalahan (error) yang terjadi saat getData() gagal dilakukan.  
result = 'An error occured'; : Mengubah nilai variabel result menjadi string 'An error occurred' sebagai tanda bahwa terjadi kesalahan.
setState(() {});: Kembali memanggil setState() untuk memberitahu Flutter bahwa state telah berubah, dan tampilan perlu diperbarui.  
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 3".  
<img src="docs/soal3.gif" width=50%></img>

#### code praktikum 1
```dart
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Febryan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';

  Future<Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/WjmlBAAAQBAJ';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future'),
      ),
      body: Center(
        child: Column(children: [
          const Spacer(),
          ElevatedButton(
              onPressed: () {
                setState(() {});
                getData().then((value) {
                  result = value.body.toString().substring(0, 450);
                  setState(() {});
                }).catchError((_) {
                  result = 'An error occured';
                  setState(() {});
                });
              },
              child: const Text('GO!')),
          const Spacer(),
          Text(result),
          const Spacer(),
          const CircularProgressIndicator(),
          const Spacer()
        ]),
      ),
    );
  }
}
```