import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mailto/mailto.dart';
import 'package:portfolio_flutter_web/components/default_background.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const urlTelegram = 'https://t.me/L_u_i_s_F';
    const urlLinkedin =
        'https://www.linkedin.com/in/luis-fernando-06222b1b5?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3B2NuLGreFShGqrHH5pMOUZw%3D%3D';
    const urlGitHub = 'https://github.com/LuisFernandoSilva';

    Future<void> launchMailto() async {
      final mailtoLink = Mailto(
        to: ['l.fernandodasilva@gmail.com'],
        subject: 'Contato para um Oferta de emprego',
        body:
            'Ola! Obrigado por entrar em contato, poderia se possivel me explicar sua oferta de emprego?!',
      );

      await launch('$mailtoLink');
    }

    Future<void> openUrl(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return DefaultBackground(
      image: 'assets/back_3.png',
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Entre em contato comigo pelo:',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
            width: Get.width * .2,
            child: Card(
              elevation: 8,
              color: Colors.white10,
              child: Row(
                children: [
                  Expanded(
                    flex: 20,
                    child: IconButton(
                      icon: Image.asset('assets/linkedin.png'),
                      onPressed: () {
                        openUrl(urlLinkedin);
                      },
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: IconButton(
                      icon: Image.asset('assets/telegrama.png'),
                      onPressed: () {
                        openUrl(urlTelegram);
                      },
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: IconButton(
                      icon: Image.asset('assets/github.png'),
                      onPressed: () {
                        openUrl(urlGitHub);
                      },
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: IconButton(
                      icon: Image.asset('assets/enviar.png'),
                      onPressed: () {
                        launchMailto();
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
