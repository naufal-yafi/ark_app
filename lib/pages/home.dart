import 'package:flutter/material.dart';
import './../style/design_system.dart';

class Home extends StatelessWidget {
  String username = '';
  Home(this.username);

  @override
  Widget build(BuildContext context) {
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

    return MaterialApp(
      title: 'arK | Beranda',
      home: Scaffold(
        backgroundColor: neutral_900,
        body: Stack(
          children: [searchBar()],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
