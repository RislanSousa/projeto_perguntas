import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.Dart.dart';

//import './questao.dart';
main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é sua cor favorita?',
      'Qual é o seum animal favorito?',
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text('Perguntas'),
            ),
            body: Column(children: <Widget>[
              Questao(perguntas[_perguntaSelecionada]),
              RaisedButton(
                child: Text('Resposta1'),
                onPressed: _responder,
              ),
              RaisedButton(
                child: Text('Resposta2'),
                onPressed: _responder,
              ),
              RaisedButton(
                child: Text('Resposta3'),
                onPressed: _responder,
              ),
            ])));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
