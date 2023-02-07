import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resposta;
  final void Function() onSelected;

  const Resposta(this.resposta, this.onSelected, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onSelected,
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
        child: Text(resposta),
      ),
    );
  }
}
