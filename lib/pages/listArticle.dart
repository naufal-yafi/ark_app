import 'package:ark_app/pages/home.dart';
import 'package:ark_app/pages/yourAccount.dart';
import 'package:ark_app/pages/write.dart';
import 'package:ark_app/pages/read.dart';
import 'package:flutter/material.dart';
import 'package:ark_app/style/design_system.dart';

class ListArticle extends StatelessWidget {
  int tab = 0;
  @override
  Widget build(BuildContext context) {
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

    artikelGroup() {
      return Container(
        padding: const EdgeInsets.only(top: 114, bottom: 80),
        child: ListView(
          children: <Widget>[
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
          ],
        ),
      );
    }

    searchBar() {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Card(
          color: neutral_800,
          child: ListTile(
            selectedTileColor: neutral_50,
            leading: Icon(
              Icons.search,
              color: neutral_100,
            ),
            title: TextField(
              style: body2RegulerShade50,
              cursorColor: neutral_50,
              decoration: InputDecoration(
                  hintText: "Cari topik kesukaanmu disini...",
                  hintStyle: TextStyle(
                    color: neutral_100,
                  ),
                  border: InputBorder.none),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.cancel,
                color: neutral_100,
              ),
            ),
          ),
        ),
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
      title: 'arK | Beranda',
      home: Scaffold(
        backgroundColor: neutral_900,
        body: Stack(
          children: [artikelGroup(), searchBar(), bottomBar(), btnWriting()],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
