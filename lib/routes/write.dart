import 'package:ark_app/pages/createArticle.dart';
import 'package:ark_app/pages/listArticle.dart';
import 'package:ark_app/pages/yourAccount.dart';
import 'package:flutter/material.dart';
import 'package:ark_app/style/design_system.dart';

class WritePage extends StatefulWidget {
  @override
  State<WritePage> createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {
  int currentTab = 0;

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = CreateArticle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton.large(
        child: Icon(
          Icons.create,
          color: currentTab == 0 ? neutral_900 : neutral_50,
          size: 24,
        ),
        onPressed: () {
          setState(() {
            currentTab = 1;
            currentScreen = CreateArticle();
          });
        },
        backgroundColor: currentTab == 0 ? neutral_50 : primary,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 18,
        child: Container(
          color: neutral_900,
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1),
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //! BTN BERANDA
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = ListArticle();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: currentTab == 1 ? neutral_50 : neutral_200,
                          size: 30,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Beranda",
                          style: currentTab == 1
                              ? label1RegulerShade50
                              : label1RegulerShade200,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              //! END BTN BERANDA
              //! BTN ACCOUNT
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = YourAccountPage();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.account_circle,
                          color: currentTab == 2 ? neutral_50 : neutral_200,
                          size: 30,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Profile",
                          style: currentTab == 2
                              ? label1RegulerShade50
                              : label1RegulerShade200,
                        )
                      ],
                    ),
                  ),
                ],
              )
              //! END BTN ACCOUNT
            ],
          ),
        ),
      ),
    );
  }
}
