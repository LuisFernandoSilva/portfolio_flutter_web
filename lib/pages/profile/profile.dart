import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/pages/profile/components/card_default.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background_top.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: SingleChildScrollView(
        child: Row(
          children: [
            Expanded(
              flex: 20,
              child: CardProfileDefault(
                index: 0,
                urlImage: "assets/photo_luis.jpg",
                name: 'Luis Fernando - CoFundador',
                description:
                    'Nascido em Porto Alegre - RS, Tem a busca pelo inovação uma meta desde criança, e na area de TI tem a chance de implementar essa paixão, com foco no desenvolvimento mobile na tecnologia Flutter, desenvolvida pela google que cresce cada vez mais no mercado, juntou ao seus colegas de ideias para o nascimento dessa empresa.',
              ),
            ),
            Expanded(
              flex: 20,
              child: CardProfileDefault(
                index: 1,
                urlImage: "assets/photo_lucas.jpg",
                name: 'Lucas Almeida - CoFundador',
                description:
                    'Nascido em Porto Alegre - RS, Tem a busca pelo inovação desde criança, e na area de TI a chance de implementar essa paixão, com foco no desenvolvimento mobile na tecnologia Flutter, desenvolvida pela google que cresce cada vez mais no mercado, juntou ao seus colegas de ideias para o nascimento dessa empresa.',
              ),
            ),
            Expanded(
              flex: 20,
              child: CardProfileDefault(
                index: 2,
                urlImage: "assets/photo_luis.jpg",
                name: 'Luis Eduardo- CoFundador',
                description:
                    'Nascido em Porto Alegre - RS, Tem a busca pelo inovação desde criança, e na area de TI a chance de implementar essa paixão, com foco no desenvolvimento mobile na tecnologia Flutter, desenvolvida pela google que cresce cada vez mais no mercado, juntou ao seus colegas de ideias para o nascimento dessa empresa.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
