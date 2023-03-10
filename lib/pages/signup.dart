import 'home.dart';
import 'login.dart';
import 'starting.dart';
import 'write.dart';
import '../style/design_system.dart';
import 'package:flutter/material.dart';

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
              style: display1Reguler,
            ),
            Text(
              'Artikel Kulo',
              style: heading1Reguler,
            )
          ],
        ),
      );
    }

    //! TEXT INPUT
    userInput(textLabel, textPlaceholder, stylePassword) {
      if (textLabel == 'Email') {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Text(
              '${textLabel}',
              style: body3Reguler,
            ),
            Container(
              margin: const EdgeInsets.only(top: 14),
              decoration: BoxDecoration(
                  color: neutral_800,
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              child: TextField(
                style: body2BoldShade50,
                cursorColor: neutral_50,
                obscureText: stylePassword,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    contentPadding: textFieldSize,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primary)),
                    border: InputBorder.none,
                    hintStyle: body2Reguler,
                    hintText: '${textPlaceholder}'),
              ),
            ),
          ],
        );
      } else {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Text(
              '${textLabel}',
              style: body3Reguler,
            ),
            Container(
              margin: const EdgeInsets.only(top: 14),
              decoration: BoxDecoration(
                  color: neutral_800,
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              child: TextField(
                style: body2BoldShade50,
                cursorColor: neutral_50,
                obscureText: stylePassword,
                decoration: InputDecoration(
                    contentPadding: textFieldSize,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primary)),
                    border: InputBorder.none,
                    hintStyle: body2Reguler,
                    hintText: '${textPlaceholder}'),
              ),
            ),
          ],
        );
      }
    }

    btnLogin() {
      return ElevatedButton(
        onPressed: () {
          if (condition == 'baca') {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          } else {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => WritePage()));
          }
        },
        child: Text(
          'Daftar',
          style: body2RegulerShade50,
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: primary, padding: btnSize),
      );
    }

    btnGoogle() {
      return InkWell(
        onTap: () {
          if (condition == 'baca') {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          } else {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => WritePage()));
          }
        },
        child: Container(
          padding: btnSize,
          decoration: BoxDecoration(
              color: neutral_800, borderRadius: BorderRadius.circular(6)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/googleLogo.png'),
              const SizedBox(
                width: 24,
              ),
              Text('Masuk dengan Google', style: label1Reguler)
            ],
          ),
        ),
      );
    }

    return MaterialApp(
      title: 'arK | Daftar',
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
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
              userInput('Nama', 'Masukkan namamu', false),
              userInput('Email', 'Masukkan emailmu', false),
              userInput('Kata Sandi', 'Masukkan kata sandimu', true),
              userInput('Tulis Ulang Kata Sandi',
                  'Masukkan kata sandimu kembali', true),
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
                    style: body2Reguler,
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
                        style: body2Medium,
                      ))
                ],
              ),
              const SizedBox(
                height: 34,
              ),
              btnGoogle()
            ],
          ),
        ),
        backgroundColor: neutral_900,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
