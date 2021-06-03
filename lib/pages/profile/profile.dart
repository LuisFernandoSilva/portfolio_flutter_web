import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_flutter_web/components/default_background.dart';
import 'package:portfolio_flutter_web/pages/profile/components/card_default.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultBackground(
      image: 'assets/back_2.png',
      child: SingleChildScrollView(
        child: Column(
          children: [
            CardProfileDefault(
              index: 0,
              urlImage: "assets/my_photo.png",
              name: 'Estudante de Programação',
              description:
                  'Nascido em Porto Alegre, RS - Residindo atualmente em Novo Hamburgo no mesmo estado. Aonde curso Análise de Sistemas de Informação na Ftec faculdades integradas.Mesmo sendo todas as minhas experiências anteriores e inclusive o meu emprego atual não tendo relação com a área de T.I, e sendo este o meu desejo o de ter essa nova experiência conseguindo assim começar meu caminho nesta área, que descobri de forma tardia, ser a escolha da qual eu me sinto mais atraído profissionalmente e pessoalmente. Atualmente me entusiasmando em aprender a desenvolver aplicações mobile pelo Flutter, além de novas engines para o desenvolvimento de jogos sendo a Godot a que estou aprendendo a desenvolver.',
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: Get.width * .5,
              child: Card(
                margin: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                elevation: 8,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Conhecimentos basicos:',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Image.asset(
                              'assets/flutter.png',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Image.asset(
                              'assets/godot.png',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Image.asset(
                              'assets/Java.png',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
