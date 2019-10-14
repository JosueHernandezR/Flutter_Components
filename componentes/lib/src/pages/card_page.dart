import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
        ],
      ),
    );
  }

   Widget _cardTipo1() {

     return Card(
       child: Column(
         children: <Widget>[
           ListTile(
             leading: Icon( Icons.photo_album, color: Colors.blue ),
             title: Text('Titulo'),
             subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec bibendum massa ut ante bibendum dapibus. Aenean venenatis pulvinar nulla, ac accumsan elit tincidunt eget. '),
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: <Widget>[
               FlatButton(
                 child: Text( 'Cancelar' ),
                 onPressed: () {},
               ),
               FlatButton(
                 child: Text( 'Ok' ),
                 onPressed: () {},
               )
             ],
           )
         ],
       ),
     );

  }
}

 