import 'package:flutter/services.dart' show rootBundle;

class _menuProvider {
  List<dynamic> opciones = [];


  _menuProvider(){
    cargarData();
  }


  cargarData() {
    rootBundle.loadString('data/menu_opts.json')
      .then( (data) {
    
        print(data);
    
      });
  }

}

final menuProvider = new _menuProvider();