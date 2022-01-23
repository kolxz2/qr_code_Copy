import 'package:flutter/material.dart';
import 'package:qr_code/pages/licenseAgreement.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPage();
}

class _LogInPage extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        child: Container(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: ListView(
                shrinkWrap: true,
                reverse: true,
                children: <Widget>[
                  _getHeader(),
                  _getInputs(),
                  _getSignIn(context),
                ].reversed.toList(),
              ),
            )
        ),
      ),
    );
  }
}

_getHeader() {
  return Padding(
    padding: const EdgeInsets.all(0.0),
    child: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 100),
      child: Transform.scale(
        scale: 1,
        child: const Image(
          image: AssetImage(
            "assets/images/fvsr-logo.png",
          )
      ),)
    ),
  );
}

_getInputs() {
  return Padding(
    padding: const EdgeInsets.all(0.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        SizedBox(
          height: 70,
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Логин'),
        ),
        SizedBox(
          height: 50,
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Пароль'),
        ),
        SizedBox(
          height: 40,
        ),
      ],
    ),
  );
}

_getSignIn(context) {
  return Padding(
    padding: const EdgeInsets.all(0.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LicenseAgreement()),
            );
          },
            child: const Text("Вход"),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              onPrimary: Colors.white,
              shadowColor: Colors.greenAccent,
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0)),
              minimumSize: const Size(150, 70),
              maximumSize: const Size(150, 70),//////// HERE
            ),
        ),
        const SizedBox(
          height: 40,
        ),
      ]
    ),
  );
}
