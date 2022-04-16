import 'package:flutter/material.dart';
import 'package:postest_1915026007_adi_surya_darma/halaman_utama.dart';
// import 'package:postest2_1915026007_adi_surya_darma/halaman_utama.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "postest",
      home: Scaffold(
        body: halaman_utama(),
      ),
    );
  }
}
