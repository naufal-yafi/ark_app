import 'package:ark_app/pages/listArticle.dart';
import 'package:ark_app/pages/write.dart';
import 'package:ark_app/pages/yourAccount.dart';
import 'package:ark_app/style/design_system.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;
  final List<Widget> screens = [ListArticle(), WritePage(), YourAccountPage()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = ListArticle();

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
          color: currentTab == 1 ? neutral_900 : neutral_50,
          size: 24,
        ),
        onPressed: () {
          setState(() {
            currentScreen = WritePage();
            currentTab = 1;
          });
        },
        backgroundColor: currentTab == 1 ? neutral_50 : primary,
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
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: currentTab == 0 ? neutral_50 : neutral_200,
                          size: 30,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Beranda",
                          style: currentTab == 0
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
