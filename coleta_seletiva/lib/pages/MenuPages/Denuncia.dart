import 'package:flutter/material.dart';
import 'package:coleta_seletiva/pages/Menu.dart';

class Denuncia extends StatefulWidget {
  const Denuncia({super.key});

  @override
  State<Denuncia> createState() => _DenunciaState();
}

class _DenunciaState extends State<Denuncia> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Text('Denúncia'),
            leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Navigator.pop(context);
                })),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.name,
                style: new TextStyle(color: Colors.green, fontSize: 30),
                decoration: InputDecoration(
                  labelText: 'Bairro',
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
              Divider(),
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.phone,
                style: new TextStyle(color: Colors.green, fontSize: 30),
                decoration: InputDecoration(
                  labelText: 'Telefone',
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
              Divider(),
              Text(
                'Tipo de Denúncia',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),
              ),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: _value,
                    onChanged: (int? value) {
                      //inteiro ou nulo
                      setState(() {
                        _value =
                            value!; //!valor nao nulo,estou afirmando que nao será nulo
                      });
                    },
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("Descarte Irregular"),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: _value,
                    onChanged: (int? value) {
                      setState(() {
                        _value =
                            value!; //!valor nao nulo,estou afirmando que nao será nulo
                      });
                    },
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("Falta de Coleta"),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: _value,
                    onChanged: (int? value) {
                      setState(() {
                        _value =
                            value!; //!valor nao nulo,estou afirmando que nao será nulo
                      });
                    },
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("Obstrução de Patrimônio"),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 4,
                    groupValue: _value,
                    onChanged: (int? value) {
                      setState(() {
                        _value =
                            value!; //!valor nao nulo,estou afirmando que nao será nulo
                      });
                    },
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("Outro"),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  //  Navigator.push(
                  //ADICIONAR POP UP
                  // );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.green), // Altere para a cor desejada
                child: Text('DENUNCIAR'), // Texto do botão
              ),
            ], //childrem
          ),
        ));
  }
}
