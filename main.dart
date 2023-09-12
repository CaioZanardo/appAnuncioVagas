import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Vaga {
  final String nome;
  final double salario;
  final String descricao;
  final String contato;

  Vaga(this.nome, this.salario, this.descricao, this.contato);
}

class MyApp extends StatelessWidget {
  final List<Vaga> vagas = [
    Vaga(
        "Analista Infraestrutura JR",
        5.000,
        "Buscamos um profissional multicloud, com conhecimentoda infra como um todo(Windows, linux, Banco de Dados).",
        "contato@gmail.com"),
    Vaga(
        "Analista Infraestrutura Pleno",
        8.000,
        "Buscamos um profissional multicloud, com conhecimentoda infra como um todo(Windows, linux, Banco de Dados).",
        "contato@gmail.com"),
    Vaga(
        "Analista Infraestrutura Senior",
        11.000,
        "Buscamos um profissional multicloud, com conhecimentoda infra como um todo(Windows, linux, Banco de Dados).",
        "contato@gmail.com"),
    Vaga(
        "DEVOPS",
        12.000,
        "Buscamos um profissional, para executar tarefas pipeline, helmchart e infra como codigo.",
        "contato@gmail.com"),
    Vaga(
        "SRE",
        14.000,
        "Buscamos um profissional, para executar tarefas com monitoramento, soluções de capacity, resoluções de problemas em PRD e Apoio a Arquitetura.",
        "contato@gmail.com"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.black,
        body: _corpo(),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("App Anuncio de Vagas"),
      centerTitle: true,
      backgroundColor: Colors.blue,
    );
  }

  _corpo() {
    return Container(
      child: ListView.builder(
        itemCount: vagas.length,
        itemBuilder: (context, index) {
          return _vagaCard(vagas[index]);
        },
      ),
    );
  }

  _vagaCard(Vaga vaga) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              vaga.nome,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Salário: \$${vaga.salario.toStringAsFixed(2)}",
              style: TextStyle(
                fontSize: 16, // Aumentar o tamanho da fonte
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Descrição: ${vaga.descricao}",
              style: TextStyle(
                fontSize: 16, // Aumentar o tamanho da fonte
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Contato: ${vaga.contato}",
              style: TextStyle(
                fontSize: 16, // Aumentar o tamanho da fonte
              ),
            ),
          ],
        ),
      ),
    );
  }
}
