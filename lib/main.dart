import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resultado.dart';
import './questionario.dart';

main() => runApp(const PeguntaApp());

class PerguntaAppState extends State<PeguntaApp> {
  var _perguntaSelecionada = 0;
  var _notaTotal = 0;

  final _perguntas = [
    {
      'perg': 'Qual é a sua cor favorita?',
      'res': [
        {'value': 'Preto', 'nota': 1},
        {'value': 'Vermelho', 'nota': 2},
        {'value': 'Verde', 'nota': 3},
        {'value': 'Branco', 'nota': 4},
      ],
    },
    {
      'perg': 'Qual é o seu animal favorito?',
      'res': [
        {'value': 'Coelho', 'nota': 1},
        {'value': 'Cobra', 'nota': 3},
        {'value': 'Elefante', 'nota': 5},
        {'value': 'Leão', 'nota': 7},
      ],
    },
    {
      'perg': 'Qual é o seu instrumento favorito?',
      'res': [
        {'value': 'Violão', 'nota': 2},
        {'value': 'Guitarra', 'nota': 4},
        {'value': 'Violino', 'nota': 6},
        {'value': 'Flauta', 'nota': 8},
      ],
    }
  ];

  void _responder(int nota) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _notaTotal += nota;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _notaTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Perguntas'),
          ),
          body: temPerguntaSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaSelecionada,
                  responder: _responder)
              : Resultado(_notaTotal, _reiniciarQuestionario)),
    );
  }
}

class PeguntaApp extends StatefulWidget {
  const PeguntaApp({super.key});

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
