# Nama : Febryan Rizki Hidayatullah
# Kelas : TI-3F
# Nim : 2141720059
# WEEK 13
~~

## Praktikum 1: Dart Streams
### Soal 1
- Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.  
```dart
title: 'Stream Febryan',
```
- Gantilah warna tema aplikasi sesuai kesukaan Anda. 
```dart
theme: ThemeData(primarySwatch: Colors.lime),
``` 
- Lakukan commit hasil jawaban Soal 1 dengan pesan "W13: Jawaban Soal 1"  

### Soal 2
- Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.  
```dart
import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    // Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.
    Colors.green.shade800,
    Colors.indigo,
    Colors.pinkAccent,
    Colors.orangeAccent,
    Colors.lightGreen,
  ];
}
```
- Lakukan commit hasil jawaban Soal 2 dengan pesan "W13: Jawaban Soal 2"