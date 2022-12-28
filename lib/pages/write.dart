import 'package:ark_app/pages/home.dart';
import 'package:ark_app/style/design_system.dart';
import 'package:flutter/material.dart';

class WritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    appBar() {
      return Align(
        alignment: Alignment.topLeft,
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          color: neutral_900,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //! BTN BACK
              SizedBox(
                width: 40,
                height: 40,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Icon(
                    Icons.close,
                    size: 24,
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: neutral_900,
                      foregroundColor: neutral_50),
                ),
              ),
              //! BTN Unggah
              SizedBox(
                width: 120,
                height: 40,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.upload,
                    size: 14,
                  ),
                  label: const Text(
                    "Unggah",
                    style: TextStyle(fontSize: 14),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: primary),
                ),
              )
            ],
          ),
        ),
      );
    }

    inputField(String label, String hint) {
      if (label == "Konten") {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 24),
            Text(
              "${label}",
              style: body3Reguler,
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              padding: const EdgeInsets.fromLTRB(15, 5, 10, 0),
              height: 120,
              color: neutral_800,
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary)),
                  border: InputBorder.none,
                  hintStyle: body2Reguler,
                  hintText: "${hint}",
                ),
              ),
            )
          ],
        );
      } else {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 24),
            Text(
              "${label}",
              style: body3Reguler,
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              padding: const EdgeInsets.fromLTRB(15, 5, 10, 5),
              color: neutral_800,
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary)),
                  border: InputBorder.none,
                  hintStyle: body2Reguler,
                  hintText: "${hint}",
                ),
              ),
            )
          ],
        );
      }
    }

    createArt() {
      return Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Text(
              "Tulis Artikelmu Disini",
              style: heading1Bold,
            ),
            inputField("Gambar", "Tulis judul artikelmu disini..."),
            inputField("Judul", "Tulis judul artikelmu disini..."),
            inputField("Kategori", "Contoh: Seni, Kesehatan, IPTEK..."),
            inputField("Konten", "Tulis apa saja yang kamu mau....")
          ],
        ),
      );
    }

    return MaterialApp(
      title: "arK | Tulis",
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: const Icon(Icons.close)),
        ),
        backgroundColor: neutral_900,
        body: Stack(
          children: <Widget>[createArt()],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
