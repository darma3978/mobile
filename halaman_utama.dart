import 'package:flutter/material.dart';
import 'package:postest_1915026007_adi_surya_darma/halaman_order.dart';

class halaman_utama extends StatefulWidget {
  const halaman_utama({Key? key}) : super(key: key);

  @override
  State<halaman_utama> createState() => _halaman_utamaState();
}

class _halaman_utamaState extends State<halaman_utama> {
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

    Widget burger() {
      return Container(
        width: querywidth,
        height: 220,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/burger.jpg"),
          ),
        ),
        child: Text(
          "Rp. 17.000",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      );
    }

    Widget kentang() {
      return Container(
        width: querywidth,
        height: 220,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/kentang goreng.jpg"),
          ),
        ),
        child: Text(
          "Rp. 15.000",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      );
    }

    Widget hotdog() {
      return Container(
        width: querywidth,
        height: 220,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/hotdog.jpg"),
          ),
        ),
        child: Text(
          "Rp. 10.000",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      );
    }

    Widget tombol() {
      return Container(
        width: querywidth / 2,
        height: 50,
        margin: EdgeInsets.only(top: 100),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color.fromARGB(207, 197, 109, 9),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          "Order",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      );
    }

    Widget jarak() {
      return Container(
        height: 50,
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
          Padding(
            padding: const EdgeInsets.only(
              left: 100,
              top: 20,
              bottom: 20,
            ),
            child: Text(
              "Daftar Menu",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                burger(),
                kentang(),
                hotdog(),
              ],
            ),
          ),
          jarak(),
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(querywidth / 2, 50),
                  maximumSize: Size(querywidth / 2, 50),
                  primary: Color.fromARGB(207, 197, 109, 9),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => pesan()),
                  );
                },
                child: const Text("Pesan"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
