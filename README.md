# projeto_perguntas

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
#

Dando uma refatorada no código e por que irá gerar um pequeno problema dentro do Map e na Lista dentro do arquivo questionario.dart.

Para resolver é bem simples, basta adicionar o casting "as String” lá no map. Dessa forma:

        ...respostas
                    .map((resp) => Resposta(resp['texto'] as String, quandoResponder))
                    .toList(),

E na Lista fazer o cast para o mesmo tipo da Lista, dessa forma:

        List<Map<String, Object>> respostas = temPerguntaSelecionada
                ? perguntas[perguntaSelecionada]['respostas']
                    as List<Map<String, Object>>
                : [];