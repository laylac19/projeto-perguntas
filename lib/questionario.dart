import 'package:flutter/material.dart';

import 'questao.dart';
import 'resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  const Questionario(
      {super.key,
      required this.perguntas,
      required this.perguntaSelecionada,
      required this.responder});

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = (temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['res'] as List<Map<String, Object>>
        : []);

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['perg'].toString()),
        ...respostas.map((res) {
          return Resposta(
            res['value'] as String,
            () => responder(res['nota'] as int),
          );
        }).toList()
      ],
    );
  }
}
