import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:portfolio_flutter_web/pages/home/components/CardHomeDefault.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 180, //altura padrao
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background_top.jpg"),
          fit: BoxFit.fill,
        ),
      ),

      child: Swiper(
        fade: 1.0,
        itemBuilder: (BuildContext context, int index) {
          return homeScreenList[index];
        },
        itemCount: 3,
        scale: 0.9,
        pagination: SwiperPagination(),
        autoplay: true,
        autoplayDelay: 10000,
        duration: 2000,
        curve: Curves.ease,
      ),
    );
  }

  List<Widget> homeScreenList = [
    CardHomeDefault(
      index: 0,
      text:
          'Nascido em Porto Alegre - RS, Tem a busca pelo inovação uma meta desde criança, e na area de TI tem a chance de implementar essa paixão, com foco no desenvolvimento mobile na tecnologia Flutter, desenvolvida pela google que cresce cada vez mais no mercado, juntou ao seus colegas de ideias para o nascimento dessa empresa.',
    ),
    CardHomeDefault(
      index: 1,
      text:
          'Nascido em Porto Alegre - RS, Tem a busca pelo inovação uma meta desde criança, e na area de TI tem a chance de implementar essa paixão, com foco no desenvolvimento mobile na tecnologia Flutter, desenvolvida pela google que cresce cada vez mais no mercado, juntou ao seus colegas de ideias para o nascimento dessa empresa.',
    ),
    CardHomeDefault(
      index: 2,
      text:
          'Nascido em Porto Alegre - RS, Tem a busca pelo inovação uma meta desde criança, e na area de TI tem a chance de implementar essa paixão, com foco no desenvolvimento mobile na tecnologia Flutter, desenvolvida pela google que cresce cada vez mais no mercado, juntou ao seus colegas de ideias para o nascimento dessa empresa.',
    ),
  ];
}
