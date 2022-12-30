import 'package:ark_app/pages/home.dart';
import 'package:ark_app/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:ark_app/style/design_system.dart';

class StartingUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //!DESCRIPTION
    descGroup() {
      return Container(
        padding: const EdgeInsets.only(bottom: 165),
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Artikel Kulo",
                  style: display2SemiBold,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Dapatkan apa yang belum kamu ketahui, dan bagikan apa yang telah kamu ketahui.",
                  style: heading3SemiBold,
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            Column(
              children: <Widget>[
                Text(
                  "Baca apapun disini, mulai dari topik desain, cerita pengalaman, dan topik - topik seru lainnya yang akan membuatmu betah untuk membaca, juga tentunya akan menambah wawasan kamu.",
                  style: body2Reguler,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Selain membaca, kamu juga bisa menulis artikelmu sendiri dari gagasan, ide, ataupun informasi yang ingin kamu bagikan. Gunakan bahasa yang sopan dan menarik agar pembaca lainnyapun akan membaca artikelmu hingga selesai.",
                  style: body2Reguler,
                )
              ],
            )
          ],
        ),
      );
    }

    //! BUTTON COMPONENTS
    btnGroup() {
      return Align(
        alignment: Alignment.bottomLeft,
        child: SizedBox(
          height: 150,
          child: Column(
            children: <Widget>[
              //* PRIMARY BUTTON
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Login("baca")));
                  },
                  icon: const Icon(Icons.menu_book),
                  label: Text(
                    "Baca Artikel",
                    style: body1Reguler,
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: primary),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //* SECONDARY BUTTON
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: OutlinedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Login("tulis")));
                  },
                  icon: const Icon(Icons.create),
                  label: Text(
                    "Tulis Artikelmu",
                    style: body1Reguler,
                  ),
                  style: OutlinedButton.styleFrom(
                      foregroundColor: neutral_50,
                      side: BorderSide(color: neutral_50)),
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: neutral_900,
      body: Container(
        padding: paddingScreen,
        child: Stack(
          children: [descGroup(), btnGroup()],
        ),
      ),
    );
  }
}
