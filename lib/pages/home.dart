import 'package:ark_app/pages/account.dart';
import 'package:ark_app/pages/write.dart';
import 'package:ark_app/pages/read.dart';
import 'package:flutter/material.dart';
import 'package:ark_app/style/design_system.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;
  final List<Widget> screens = [WritePage(), AccountPage()];

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
                      style: heading2Bold,
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
        padding: const EdgeInsets.only(top: 114, bottom: 100),
        child: ListView(
          children: <Widget>[
            artikelCard(
                "images/img1.png",
                "Elit quis egestas amet arcu. Urna amet augue nam nisl diam.",
                "11,204",
                "UI/UX",
                "14 Des 2022"),
            artikelCard(
                "images/img2.png",
                "Sit egestas rhoncus vel et sagittis sed.",
                "15,230",
                "UI/UX",
                "11 Des 2022"),
            artikelCard(
                "images/img3.jpg",
                "Tellus a habitasse enim adipiscing aenean quis.",
                "2,302",
                "Komputer",
                "11 Des 2022"),
            artikelCard(
                "images/img4.jpg",
                "Praesent pharetra donec amet condimentum ultrices aliquam.",
                "1,056",
                "Sosial",
                "06 Sep 2022"),
            artikelCard(
                "images/img5.jpeg",
                "Et sed justo venenatis a tellus imperdiet in.",
                "3,800",
                "Kesehatan",
                "03 Des 2022"),
            artikelCard(
                "images/img6.jpeg",
                "Accumsan amet arcu facilisi in maecenas. Auctor adipiscing.",
                "5,301",
                "Seni",
                "25 Sep 2022"),
            artikelCard(
                "images/img7.jpeg",
                "Arcu dui iaculis purus et non auctor consectetur.",
                "4,003",
                "Pendidikan",
                "11 Sep 2022"),
            artikelCard(
                "images/img8.jpg",
                "Massa mi eros est vestibulum vel enim nisi integer.",
                "5,556",
                "Kesehatan",
                "03 Sep 2022"),
            artikelCard(
                "images/img9.jpg",
                "Risus aliquet convallis volutpat cursus tempor urna vitae.",
                "10,561",
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
      return Text('data');
    }

    return MaterialApp(
      title: 'arK | Beranda',
      home: Scaffold(
        backgroundColor: neutral_900,
        body: Stack(
          children: [artikelGroup(), searchBar()],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
