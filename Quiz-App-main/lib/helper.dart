import 'package:quizapp_estrutura_inicial/perguntas.dart';

class Helper {
  int _questaoAtual = 0;

  List<Perguntas> _bancoDePerguntas = [
    Perguntas('O metrô é um dos meios de transporte mais seguros do mundo.', true),
    Perguntas('A culinária brasileira é uma das melhores do mundo.', true),
    Perguntas('Vacas podem voar, assim como peixes utilizam os pés para andar.', false),
    Perguntas('A maioria dos peixes podem viver fora da água.', false),
    Perguntas('A lâmpada foi inventada por um brasileiro.', false),
    Perguntas('É possível utilizar a carteira de habilitação de carro para dirigir um avião.', false),
    Perguntas('O Brasil possui 26 estados e 1 Distrito Federal.', true),
    Perguntas('Bitcoin é o nome dado a uma das moedas virtuais mais famosas.', true),
    Perguntas('1 minuto equivale a 60 segundos.', true),
    Perguntas('1 segundo equivale a 200 milissegundos.', false),
    Perguntas('O Burj Khalifa, em Dubai, é considerado o maior prédio do mundo.', true),
    Perguntas('Ler após uma refeição prejudica a visão humana.', false),
    Perguntas('O cartão de crédito pode ser considerado uma moeda virtual.', false)
  ];

  bool proxQuestao() {
    if(_questaoAtual < _bancoDePerguntas.length - 1) {
      _questaoAtual++;

      return true;
    } 

    _questaoAtual = 0;
    return false;
  }

  String getQuestaoByNumAtual() {
    return _bancoDePerguntas[_questaoAtual].questao;
  }

  bool getRespostaCorreta() {
    return _bancoDePerguntas[_questaoAtual].resposta;
  }
}