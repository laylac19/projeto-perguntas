import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() onReset;

  const Resultado(this.pontuacao, this.onReset, {super.key});

  String get fraseReultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseReultado,
            style: const TextStyle(fontSize: 26),
          ),
        ),
        TextButton(
          onPressed: onReset,
          style: TextButton.styleFrom(foregroundColor: Colors.cyan),
          child: const Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 18),
          ),
        )
      ],
    );
  }
}
