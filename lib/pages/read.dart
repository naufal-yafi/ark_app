import 'home.dart';
import 'writerAccount.dart';
import '../style/design_system.dart';
import 'package:flutter/material.dart';

class ReadingPage extends StatefulWidget {
  String title, date, category, image;
  ReadingPage(this.title, this.date, this.category, this.image);

  @override
  State<ReadingPage> createState() =>
      _ReadingPageState(this.title, this.date, this.category, this.image);
}

class _ReadingPageState extends State<ReadingPage> {
  String title, date, category, image;
  _ReadingPageState(this.title, this.date, this.category, this.image);

  titleArticle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "${title}",
          style: heading2Bold,
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          "${date} • ${category}",
          style: body2Reguler,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Text(
              "Penulis: ",
              style: body2RegulerShade100,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              WriterAccountPage(title, date, category, image)));
                },
                child: Text(
                  "Muhammad Naufal Yafi'",
                  style: body2Reguler,
                ))
          ],
        )
      ],
    );
  }

  contentArticle() {
    return Text(
      "Lorem ipsum dolor sit amet consectetur. Maecenas quam odio est ut viverra nec quam amet. Aliquam ut dolor sit augue egestas. Lacus non pellentesque in consequat. Elit quis egestas amet arcu. Urna amet augue nam nisl diam. Ullamcorper nunc volutpat accumsan tempor gravida sed. Amet platea ultricies amet vel. Accumsan amet arcu facilisi in maecenas. Auctor adipiscing orci ac imperdiet. Ac molestie vehicula pulvinar amet tellus gravida pellentesque feugiat sed. Eu augue mauris amet sollicitudin in suscipit vitae ut placerat.\n\nArcu dui iaculis purus et non auctor consectetur. Risus aliquet convallis volutpat cursus tempor urna vitae sapien pretium. Massa mi eros est vestibulum vel enim nisi integer ullamcorper.\n\nLorem ipsum dolor sit amet consectetur. Ut nulla sollicitudin vulputate senectus blandit nibh. Amet magna pulvinar eu maecenas magna montes faucibus ornare. Urna id nunc nullam nunc adipiscing nulla sed etiam est. Amet eu blandit lacus in amet sed a in. Viverra mauris sed urna ac. Malesuada morbi consectetur nullam rhoncus vivamus aenean. Ac vestibulum aliquam libero nam sagittis. Sit tristique mi est ac. Mauris vel at tempus facilisis aliquam aenean ac. In arcu est dui sed fermentum vulputate nascetur a felis. Eget ut massa odio enim morbi ut cursus egestas. Praesent pharetra donec amet condimentum ultrices aliquam dolor in condimentum. Ac feugiat consectetur facilisis turpis dui. Tellus a habitasse enim adipiscing aenean quis.\n\nMolestie ridiculus auctor diam sed leo leo eget bibendum. Pulvinar condimentum turpis felis fermentum nibh. Enim eleifend leo volutpat dictum maecenas eget in pellentesque. Nibh vestibulum augue pellentesque a bibendum massa ac. Sit egestas rhoncus vel et sagittis sed. Velit viverra montes orci nibh urna bibendum malesuada egestas integer. Rutrum ipsum gravida id nulla a nisi urna id sapien. Et sed justo venenatis a tellus imperdiet in. Sed sed orci scelerisque massa eget congue tempus donec. Consequat habitant et dignissim id ultricies fermentum consequat scelerisque.",
      style: body2RegulerShade100,
    );
  }

  btnBack() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(
              20, 20, MediaQuery.of(context).size.width * 0.35, 20),
          color: neutral_900,
          child: ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            icon: const Icon(
              Icons.subdirectory_arrow_left,
              size: 14,
            ),
            label: Text(
              "Baca Artikel Lainnya",
              style: body2RegulerShade50,
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: primary, padding: btnSize),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'arK | Baca',
      home: Scaffold(
          backgroundColor: neutral_900,
          body: Stack(
            children: <Widget>[
              Container(
                child: ListView(
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(image),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15, bottom: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: titleArticle(),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(24, 8, 24, 100),
                      child: contentArticle(),
                    ),
                  ],
                ),
              ),
              btnBack()
            ],
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}
