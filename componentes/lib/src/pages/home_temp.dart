import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = [ 'Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco' ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearitems(),
      ),
    );
  }

  List<Widget> _crearitems(){
    
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add ( tempWidget )
          ..add( Divider() );

    }

    return lista;
  }
}