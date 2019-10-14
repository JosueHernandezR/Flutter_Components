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
          SizedBox(height: 30.0,),
          _cardTipo2(),
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

  Widget _cardTipo2() {

    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          /* Image(
            image: NetworkImage('https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
          ), */
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris viverra aliquam tortor, a convallis justo convallis eu. Nulla quam quam, consectetur ut ultrices eget, malesuada et sem.')),
        ],
      ),
    );

  }
}

 