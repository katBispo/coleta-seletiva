import 'package:flutter/material.dart';
import 'package:coleta_seletiva/pages/MenuPages/Denuncia.dart';
//import 'package:coleta_seletiva/pages/MenuPages/ChatDuvidas.dart';
import 'package:coleta_seletiva/pages/MenuPages/FiqueConsciente.dart';
import 'package:coleta_seletiva/pages/MenuPages/Agendamento.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
              ),
              Divider(),
              ElevatedButton(
                onPressed: () {
                  //navegar para proxima pagina quando pressionado
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Denuncia()),
                  );
                },
                style: ElevatedButton.styleFrom(primary: Colors.green),
                child: Text('DENÚNCIAS'),
              ),
              /* ElevatedButton(
            onPressed:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context)=>ChatDuvidas()),
              );
            },
          ),**/ //elevated Buttons
              Divider(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FiqueConsciente()),
                  );
                },
                style: ElevatedButton.styleFrom(primary: Colors.green),
                child: Text('Fique Consciente!'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Agendamento()),
                  );
                },
                style: ElevatedButton.styleFrom(primary: Colors.green),
                child: Text('Agendamento'),
              ),
            ],
          ),
        ));
  }
}
