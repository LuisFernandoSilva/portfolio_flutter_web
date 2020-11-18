import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<void> launchMailto() async {
      final mailtoLink = Mailto(
        to: ['softwares.3l.development@gmail.com'],
        subject: 'Contato para um projeto[diga aqui o nome da sua empresa]',
        body:
            'Nos explique seu projeto, para que podermos ajudar da melhor forma possivel!',
      );

      await launch('$mailtoLink');
    }

    return Container(
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/back.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 190),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Entre Contato.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Text(
                'Para fazer seu projeto, nos contate para preparar seu orçamento e conversar sobre a viabilidade de seu projeto mobile, da seguinte forma:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                softWrap: true,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 180),
            child: Align(
              alignment: Alignment.topLeft,
              child: FlatButton.icon(
                icon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                label: Text(
                  'Mande seu E-mail para : softwares.3l.development@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  launchMailto();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
