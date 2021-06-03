import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:portfolio_flutter_web/components/default_background.dart';
import 'package:portfolio_flutter_web/pages/home/components/CardHomeDefault.dart';

class ProjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultBackground(
      image: "assets/back_1.png",
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

  final List<Widget> homeScreenList = [
    CardHomeDefault(
      index: 0,
      urlImage: 'assets/space_war.PNG',
      text:
          'Criado com o objetivo de mostrar aos alunos participantes do pet uma nova tecnologia para a criação de jogos usando a engine Godot 3.1',
    ),
    CardHomeDefault(
      index: 1,
      urlImage: 'assets/euclide_extendido.PNG',
      text:
          'Aplicação programada em java com o objetivo de calcular os numeros que seram usados na criptografia RSA, usando o metodo criado por euclides para fazer esse calculo.',
    ),
    CardHomeDefault(
      index: 2,
      urlImage: 'assets/flutter16x9.png',
      text:
          'Aplicações programadas em flutter sdk que usa a linguagem Dart, projeto do Google para fazer aplicações mobile, porem que em breve poderá fazer aplicações para web.',
    ),
    CardHomeDefault(
      index: 3,
      urlImage: 'assets/ff.png',
      text:
          'Juntamente com minha equipe fomos um dos cindo finalistas do FF enterprise de 2018 com uma solução para o setor calçadista.',
    ),
  ];
}
