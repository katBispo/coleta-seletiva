import 'package:flutter/material.dart';

class Agendamento extends StatefulWidget {
  const Agendamento({super.key});

  @override
  State<Agendamento> createState() => _AgendamentoState();
}

class _AgendamentoState extends State<Agendamento> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Text('Agendamento'),
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
                'Tipo de Material',
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
                  Text("Entulho"),
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
                  Text("Recicláveis"),
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
                  Text("Eletrônicos"),
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
                  Text("Madeira"),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 5,
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
                  Text("Pneus"),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 6,
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
                  Text("Volumosos"),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 7,
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
                  Text("Podas e Capinas"),
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
                child: Text('AGENDAR'), // Texto do botão
              ),
            ], //childrem
          ),
        ));
  }
}
