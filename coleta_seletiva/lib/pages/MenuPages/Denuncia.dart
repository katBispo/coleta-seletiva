import 'package:flutter/material.dart';
import 'package:coleta_seletiva/pages/Menu.dart';

class Denuncia extends StatefulWidget {
  const Denuncia({super.key});

  @override
  State<Denuncia> createState() => _DenunciaState();
}

class _DenunciaState extends State<Denuncia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text("Denúncia"),
          leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Navigator.pop(context); //voltar para tela anterior
              })),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
              autofocus: true,
              keyboardType: TextInputType.text,
              style: new TextStyle(color: Colors.green, fontSize: 30),
              decoration: InputDecoration(
                labelText: 'Bairro',
                labelStyle: TextStyle(color: Colors.black),
              )),
          Divider(),
          TextFormField(
              autofocus: true,
              keyboardType: TextInputType.phone,
              style: new TextStyle(color: Colors.green, fontSize: 30),
              decoration: InputDecoration(
                labelText: 'Telefone',
                labelStyle: TextStyle(color: Colors.black),
              ))
        ],
      )),
    );
  }
}
