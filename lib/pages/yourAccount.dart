import 'dart:html';

import 'package:ark_app/pages/home.dart';
import 'package:ark_app/pages/login.dart';
import 'package:ark_app/pages/write.dart';
import 'package:ark_app/style/design_system.dart';
import 'package:flutter/material.dart';

class YourAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dashboard() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //! PHOTO PROFILE
          Container(
            margin: const EdgeInsets.only(top: 40),
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "images/char06.png",
              height: 100,
            ),
          ),
          //! END PHOTO PROFILE
          const SizedBox(
            height: 24,
          ),
          //! NAME WRITER
          Text(
            "Nama Pengguna",
            style: heading1Bold,
          ),
          //! END NAME WRITER
          const SizedBox(
            height: 24,
          ),
          //! ACCOUNT ACTION
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //! SECONDARY BUTTON
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.42,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Ubah Profil",
                    style: body2RegulerShade50,
                  ),
                  style: OutlinedButton.styleFrom(
                      foregroundColor: neutral_50,
                      side: BorderSide(color: neutral_50)),
                ),
              ),
              //! SECONDARY BUTTON
              //! PRIMARY BUTTON
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.42,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login("baca")));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Keluar Akun",
                        style: body2RegulerShade50,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.logout,
                        size: 16,
                        color: neutral_50,
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                  ),
                ),
              ),
              //! PRIMARY BUTTON
            ],
          ),
          //! END ACCOUNT ACTION
          const SizedBox(
            height: 24,
          ),
          //! COUNT APPRETIATION
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: neutral_800,
                borderRadius: const BorderRadius.all(Radius.circular(5))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "0",
                      style: display2Bold,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "apresiasi",
                      style: body2Reguler,
                    ),
                  ],
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.thumb_up,
                    size: 14,
                    color: neutral_900,
                  ),
                  label: Text(
                    "Beri Apresiasi",
                    style: body2BoldShade900,
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 15),
                      backgroundColor: neutral_300),
                )
              ],
            ),
          ),
          //! END COUNT APPRETIATION
          const SizedBox(
            height: 24,
          ),
          //! STATISTICS
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //! COUNT ARTICLE UPLOADS
              Container(
                width: MediaQuery.of(context).size.width * 0.42,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: neutral_800,
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.upload,
                          color: neutral_50,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "0",
                          style: display2Bold,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "artikel diunggah",
                      style: label1Reguler,
                    )
                  ],
                ),
              ),
              //! END COUNT ARTICLE UPLOADS
              //! COUNT ARTICLE READS
              Container(
                width: MediaQuery.of(context).size.width * 0.42,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: neutral_800,
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.remove_red_eye,
                          color: neutral_50,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "0",
                          style: display2Bold,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "artikelmu dibaca",
                      style: label1Reguler,
                    )
                  ],
                ),
              ),
              //! END COUNT ARTICLE READS
            ],
          ),
          //! END STATISTICS
          const SizedBox(
            height: 30,
          ),
          //! LIST ARTICLE HAS WRITE
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Artikel yang ditulis",
              style: label1RegulerShade50,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "Belum menulis apapun...",
            style: label1Reguler,
          )
          //! ENDLIST ARTICLE HAS WRITE
        ],
      );
    }

    return MaterialApp(
      title: 'arK | Artikel Kulo',
      home: Scaffold(
        backgroundColor: neutral_900,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: neutral_900,
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: Icon(
                Icons.arrow_back,
                color: neutral_50,
              )),
          title: Text(
            "Profilmu",
            style: body2RegulerShade50,
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Stack(
            children: <Widget>[dashboard()],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
