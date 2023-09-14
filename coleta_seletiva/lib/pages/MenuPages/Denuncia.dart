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
     AppBar(
  centerTitle: true,
  title: Text('AppBar'),
  leading: IconButton(
    onPressed: () {},
    icon: Icon(Icons.home),
  ),
    );
  }
}
