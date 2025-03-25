import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {
  @override
  _SobreState createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  TextEditingController _textEditingController =
      TextEditingController(); // Instanciar o objeto para controlar o campo de texto

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre App"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Volta para a tela anterior
          },
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              InkWell(
                child: ListTile(
                  title: const Text('Versão do App: 1.0.0'),
                ),
              ),
              InkWell(
                onTap: () => print('Sobre sua conta'),
                child: ListTile(
                  title: const Text('Sobre sua conta'),
                ),
              ),
              InkWell(
                onTap: () => print('Politica de privacidade'),
                child: ListTile(
                  title: const Text('Politica de privacidade'),
                ),
              ),
              InkWell(
                onTap: () => print('Termos de Uso'),
                child: ListTile(
                  title: const Text('Termos de Uso'),
                ),
              ),
              InkWell(
                onTap: () => print('Politicas de Terceiros'),
                child: ListTile(
                  title: const Text('Politicas de Terceiros'),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'App Criado por Charles, Rafael, Alex e Lucas.\n'
                'Alunos do curso de Engenharia da Computação da\n'
                'Pontifícia Universidade Católica de Minas Gerais.\n'
                'Todos os direitos reservados aos Criadores do App.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
