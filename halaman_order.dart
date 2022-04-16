// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:postest_1915026007_adi_surya_darma/halaman_utama.dart';

class pesan extends StatefulWidget {
  const pesan({Key? key}) : super(key: key);

  @override
  State<pesan> createState() => _pesanState();
}

enum Pesanan { unknown, small, med, big }

class _pesanState extends State<pesan> {
  final NamaPemesan = TextEditingController();
  final menu = TextEditingController();
  final jumlah = TextEditingController();
  Pesanan pesanan = Pesanan.unknown;

  String menuMakanan = "", namaPembeli = "", jumlahBeli = "";
  // jumlahBeli = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    NamaPemesan.dispose();
    menu.dispose();
    jumlah.dispose();
    super.dispose();
  }

  String getPesanan(Pesanan? value) {
    if (value == Pesanan.small) {
      return "small";
    }
    if (value == Pesanan.big) {
      return "big";
    }
    if (value == Pesanan.med) {
      return "medium";
    } else {}
    return " ";
  }

  @override
  Widget build(BuildContext context) {
    var querywidth = MediaQuery.of(context).size.width;
    var queryheight = MediaQuery.of(context).size.height;

    Widget TokoJunkFood() {
      return Container(
        width: querywidth,
        height: 220,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/junkfood.jpg"),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Junk Food By Adi Surya Darma"),
        backgroundColor: Color.fromARGB(255, 245, 136, 12),
      ),
      backgroundColor: Color.fromARGB(185, 209, 110, 17),
      body: ListView(
        children: [
          TokoJunkFood(),
          SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                maxLines: 1,
                controller: NamaPemesan,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // fillColor: Colors.red,
                  labelText: "Nama Pemesan",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                maxLines: 1,
                controller: menu,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // fillColor: Colors.red,
                  labelText: "Menu Pesanan",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                maxLines: 1,
                controller: jumlah,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Jumlah Pesanan",
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: const Text("small"),
                      leading: Radio(
                        groupValue: pesanan,
                        value: Pesanan.small,
                        onChanged: (Pesanan? value) {
                          setState(() {
                            pesanan = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListTile(
                      title: const Text("med"),
                      leading: Radio(
                        groupValue: pesanan,
                        value: Pesanan.med,
                        onChanged: (Pesanan? value) {
                          setState(() {
                            pesanan = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: const Text("big"),
                      leading: Radio(
                        groupValue: pesanan,
                        value: Pesanan.big,
                        onChanged: (Pesanan? value) {
                          setState(() {
                            pesanan = value!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "Anda memesan $menuMakanan ukuran ${getPesanan(pesanan)}",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                "Dengan jumlah $jumlahBeli",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                "Atas Nama $namaPembeli",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(querywidth / 2, 50),
                  maximumSize: Size(querywidth / 2, 50),
                  primary: Color.fromARGB(207, 197, 109, 9),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20),
                  ),
                  // padding: EdgeInsets.fromLTRB(20, 20, 20, 20)
                ),
                onPressed: () {
                  setState(() {
                    menuMakanan = menu.text;
                    jumlahBeli = jumlah.text;
                    namaPembeli = NamaPemesan.text;
                  });
                },
                child: const Text("Order"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
