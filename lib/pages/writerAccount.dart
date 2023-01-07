import 'package:ark_app/pages/home.dart';
import 'package:ark_app/pages/read.dart';
import 'package:ark_app/pages/write.dart';
import 'package:ark_app/pages/yourAccount.dart';
import 'package:ark_app/style/design_system.dart';
import 'package:flutter/material.dart';

class WriterAccountPage extends StatelessWidget {
  String title, date, category, image;
  WriterAccountPage(this.title, this.date, this.category, this.image);

  @override
  Widget build(BuildContext context) {
    int tab = -1;
    artikelCard(String linkImg, String title, String see, String category,
        String date) {
      return InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) =>
                      ReadingPage(title, date, category, linkImg))));
        },
        child: Container(
          padding: const EdgeInsets.fromLTRB(24, 20, 0, 20),
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: neutral_800)),
          child: Row(
            children: <Widget>[
              //! Image Card
              Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Container(
                    color: neutral_50,
                    child: SizedBox(
                      width: 120,
                      // height: 150,
                      child: Image.asset(linkImg),
                    ),
                  )),
              //! Text Group
              Container(
                width: MediaQuery.of(context).size.width * 0.60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //! Category
                    Text(
                      "${category}",
                      style: label2Reguler,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    //! TITLE
                    Text(
                      "${title}",
                      maxLines: 3,
                      overflow: TextOverflow.clip,
                      style: heading3Bold,
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      "${see} x dibaca • ${date}",
                      style: label1Reguler,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    dashboard() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //! PHOTO PROFILE
          Container(
            margin: const EdgeInsets.only(top: 40),
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "images/char07.png",
              height: 100,
            ),
          ),
          //! END PHOTO PROFILE
          const SizedBox(
            height: 24,
          ),
          //! NAME WRITER
          Text(
            "Muhammad Naufal Yafi'",
            style: heading1Bold,
          ),
          const SizedBox(
            height: 24,
          ),
          //! COUNT APPRETIATION
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
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
                        "131",
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
                      color: neutral_50,
                    ),
                    label: Text(
                      " Beri Apresiasi",
                      style: body2BoldShade50,
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        backgroundColor: primary),
                  )
                ],
              ),
            ),
          ),
          //! END COUNT APPRETIATION
          const SizedBox(
            height: 24,
          ),
          //! STATISTICS
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
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
                            "09",
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
                            "338",
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
          ),
          //! END STATISTICS
          const SizedBox(
            height: 30,
          ),
          //! LIST ARTICLE HAS WRITE
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Artikel yang ditulis",
                style: label1RegulerShade50,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          //! ENDLIST ARTICLE HAS WRITE
          //! LIST ARTICLE
          artikelCard(
              "images/img1.png",
              "Elit quis egestas amet arcu. Urna amet augue nam nisl diam.",
              "20",
              "UI/UX",
              "14 Des 2022"),
          artikelCard(
              "images/img2.png",
              "Sit egestas rhoncus vel et sagittis sed.",
              "50",
              "UI/UX",
              "11 Des 2022"),
          artikelCard(
              "images/img3.jpg",
              "Tellus a habitasse enim adipiscing aenean quis.",
              "14",
              "Komputer",
              "11 Des 2022"),
          artikelCard(
              "images/img4.jpg",
              "Praesent pharetra donec amet condimentum ultrices aliquam.",
              "35",
              "Sosial",
              "06 Sep 2022"),
          artikelCard(
              "images/img5.jpeg",
              "Et sed justo venenatis a tellus imperdiet in.",
              "56",
              "Kesehatan",
              "03 Des 2022"),
          artikelCard(
              "images/img6.jpeg",
              "Accumsan amet arcu facilisi in maecenas. Auctor adipiscing.",
              "13",
              "Seni",
              "25 Sep 2022"),
          artikelCard(
              "images/img7.jpeg",
              "Arcu dui iaculis purus et non auctor consectetur.",
              "54",
              "Pendidikan",
              "11 Sep 2022"),
          artikelCard(
              "images/img8.jpg",
              "Massa mi eros est vestibulum vel enim nisi integer.",
              "51",
              "Kesehatan",
              "03 Sep 2022"),
          artikelCard(
              "images/img9.jpg",
              "Risus aliquet convallis volutpat cursus tempor urna vitae.",
              "45",
              "Kewarganegaraan",
              "07 Agt 2022"),
          //! END LIST ARTICLE
        ],
      );
    }

    bottomBar() {
      return Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          height: 80,
          color: neutral_900,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //! HOME
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      color: tab == 0 ? neutral_50 : neutral_200,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Beranda",
                      style: tab == 0
                          ? label1RegulerShade50
                          : label1RegulerShade200,
                    )
                  ],
                ),
              ),
              //! HOME
              //! ACCOUNT
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => YourAccountPage()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.account_circle,
                      color: tab == 2 ? neutral_50 : neutral_200,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Profil",
                      style: tab == 2
                          ? label1RegulerShade50
                          : label1RegulerShade200,
                    )
                  ],
                ),
              ),
              //! ACCOUNT
            ],
          ),
        ),
      );
    }

    btnWriting() {
      return Align(
        alignment: Alignment.bottomCenter,
        child:
            //! WRITING
            InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => WritePage()));
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 30),
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: tab == 1 ? neutral_50 : primary,
                borderRadius: const BorderRadius.all(Radius.circular(50))),
            child: Icon(
              Icons.edit,
              color: tab == 1 ? neutral_900 : neutral_50,
            ),
          ),
        ),
        //! WRITING,
      );
    }

    return MaterialApp(
      title: 'arK | Penulis',
      home: Scaffold(
        backgroundColor: neutral_900,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: neutral_900,
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ReadingPage(title, date, category, image)));
              },
              icon: Icon(
                Icons.arrow_back,
                color: neutral_50,
              )),
          title: Text(
            "Profil Penulis",
            style: body2RegulerShade50,
          ),
        ),
        body: Stack(
          children: <Widget>[
            ListView(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 90),
                  child: dashboard(),
                )
              ],
            ),
            bottomBar(),
            btnWriting()
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
