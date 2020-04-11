import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulBuilder {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {

    //print(menuProvider.cargarData);
    //Al tener quec argar datos, esta forma puede hacer que la aplicacion se vea trabada
    //menuProvider.cargarData().then( (opciones) {
    //  print( '_lista' );
    //  print(opciones);
    //});

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot ){

        return ListView(
          children: _listaItems( snapshot.data, context ),
        );

      },
    );


    //

  }

  List<Widget> _listaItems( List<dynamic> data, BuildContext context ) {

    final List<Widget> opciones = [];
    

    data.forEach( (opt) {

      final widgetTemp = ListTile( 
        title: Text( opt['texto'] ),
        leading: getIcon(opt['icon']),
        trailing: Icon ( Icons.keyboard_arrow_right, color: Colors.blue ),
        onTap: () {


          //Crear navegación secundaria o a un solo lugar
          //final route = MaterialPageRoute(
            //Se pueden enviar distintos tipos de argumentos
            //builder: ( context ) => AlertPage()
          //);

          //Pone una nueva pantalla encima
          Navigator.pushNamed( context, opt['ruta'] );


        },
      );

      opciones..add( widgetTemp )
              ..add( Divider() );

    });

    return opciones;

  }
}