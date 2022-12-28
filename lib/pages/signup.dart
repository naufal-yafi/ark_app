import 'package:ark_app/pages/home.dart';
import 'package:ark_app/pages/login.dart';
import 'package:ark_app/pages/starting.dart';
import 'package:ark_app/pages/write.dart';
import 'package:flutter/material.dart';
import './../style/design_system.dart';

class Signup extends StatelessWidget {
  String condition = '';
  Signup(this.condition);

  @override
  Widget build(BuildContext context) {
    //! LOGO
    logo() {
      return Align(
        child: Column(
          children: [
            Text(
              'arK',
              style: textLogo_1,
            ),
            Text(
              'Artikel Kulo',
              style: textLogo_2,
            )
          ],
        ),
      );
    }

    //! TEXT INPUT
    userInput(textLabel, textPlaceholder, stylePassword) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            '${textLabel}',
            style: label2,
          ),
          const SizedBox(
            height: 14,
          ),
          TextField(
            obscureText: stylePassword,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                filled: true,
                fillColor: neutral_800,
                focusedBorder:
                    OutlineInputBorder(borderSide: BorderSide(color: primary)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: neutral_800)),
                hintStyle: sizeBody_3,
                hintText: '${textPlaceholder}'),
          ),
        ],
      );
    }

    btnLogin() {
      return SizedBox(
        height: 52,
        child: ElevatedButton(
          onPressed: () {
            if (condition == 'baca') {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            } else {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WritePage()));
            }
          },
          child: Text(
            'Daftar',
            style: label,
          ),
          style: ElevatedButton.styleFrom(backgroundColor: primary),
        ),
      );
    }

    return MaterialApp(
      title: 'arK | Login',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StartingUp()));
              },
              icon: const Icon(Icons.close)),
          backgroundColor: neutral_900,
        ),
        body: Container(
          padding: paddingScreen,
          child: ListView(
            children: [
              logo(),
              const SizedBox(
                height: 26,
              ),
              userInput('Nama Akun', 'Masukkan nama akun kamu', false),
              userInput('Email', 'Masukkan email kamu', false),
              userInput('Kata Sandi', 'Masukkan kata sandi kamu', true),
              userInput('Tulis Ulang Kata Sandi',
                  'Masukkan kata sandi kamu kembali', true),
              const SizedBox(
                height: 34,
              ),
              btnLogin(),
              const SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Sudah memiliki akun? ',
                    style: sizeBody_3,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Login('${condition}')));
                      },
                      child: Text(
                        'Masuk Sekarang',
                        style: textBTN,
                      ))
                ],
              )
            ],
          ),
        ),
        backgroundColor: neutral_900,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}