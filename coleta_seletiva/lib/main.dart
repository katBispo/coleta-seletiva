import 'package:flutter/material.dart';
import 'package:coleta_seletiva/pages/loginPages/login.dart';
import 'package:coleta_seletiva/pages/home.dart';

void main() {
  runApp(MaterialApp(home: home()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 350, // Defina a largura desejada
              height: 350, // Defina a altura desejada
              child: Image.asset('assets/seletinhoOficial.png'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navega para a página de login quando o botão é pressionado
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => login()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.green), // Altere para a cor desejada
              child: Text('COMEÇAR'), // Texto do botão
            ),
          ],
        ),
      ),
    );
  }
}
