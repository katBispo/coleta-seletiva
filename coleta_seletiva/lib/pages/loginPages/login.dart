import 'package:flutter/material.dart';
import 'package:coleta_seletiva/pages/Menu.dart';
import 'package:coleta_seletiva/pages/loginPages/resetSenha.dart';
import 'package:coleta_seletiva/pages/loginPages/cadastrarPage.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //representa a tela
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            //mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                //campo imagem seletinho
                width: 100, // largura
                height: 100, // altura
                child: Image.asset('assets/seletinhoHomePage.png'),
              ),
              TextFormField(
                //campo textp cpf
                autofocus: true,
                keyboardType: TextInputType.number, //login com CPF
                style: new TextStyle(color: Colors.black, fontSize: 30),
                decoration: InputDecoration(
                    labelText: 'CPF',
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              Divider(), //criando linha horizontal
              TextFormField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text, //login com CPF
                style: new TextStyle(color: Colors.black, fontSize: 30),
                decoration: InputDecoration(
                    labelText: 'Senha',
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              Container(
                //container para colocar botao em "esqueceu senha"
                height: 40,
                alignment: Alignment.centerRight,
                child: TextButton(
                  child:
                      Text('Esqueceu sua Senha?', textAlign: TextAlign.right),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => resetSenha()),
                    );
                  },
                ),
              ),
              Divider(),
              ElevatedButton(
                onPressed: () {
                  //navegar para proxima pagina quando botao é pressionado
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Menu()),
                  );
                },
                style: ElevatedButton.styleFrom(primary: Colors.green),
                child: Text('ENTRAR'),
              ),
              Container(
                //container para colocar botao em "esqueceu senha"
                height: 50,
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: Text('Cadastra-se', textAlign: TextAlign.center),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => cadastrarPage()),
                    );
                  },
                ),
              ),
            ]),
      ),
    );
  }
}
