import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';


class _MenuProvider {

List<dynamic> opciones = [];

// Constructor
_MenuProvider(){
  // cargarData();
}

 Future <List<dynamic>>cargarData() async {


  final resp = await rootBundle.loadString('data/menu_opts.json');

  Map dataMap = jsonDecode( resp );
  opciones = dataMap['rutas'];

  return opciones;
 }




}


final menuProvider = new _MenuProvider();

