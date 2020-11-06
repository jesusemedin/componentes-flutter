import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen()
            ),
            _logoSize()
          ],
        ),
      ),
    );
  }

  Widget _crearSlider(){

    return Slider(
      activeColor: Colors.blue,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _valorSlider,
      min: 50.0,
      max: 400.0,
      onChanged: ( _bloquearCheck) ? null : ( valor ){
        setState(() {
          _valorSlider = valor;
        });
      },

    );
  }

  Widget _checkBox(){

    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: (valor){
    //     // print(valor);
    //     setState(() {
    //       _bloquearCheck = valor;
    //     });
    //   },
    // );

    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor){
        // print(valor);
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );

  }

  Widget _crearSwitch(){
      return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor){
        // print(valor);
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }

  Widget _crearImagen(){

    // print(_valorSlider);
    return FlutterLogo(
      size: _valorSlider,
      style: FlutterLogoStyle.horizontal,
      duration: Duration( milliseconds: 750 ),
    );

  }

  Widget _logoSize(){
    return Container(
      child: Text('Tamaño de la imagen: ${_valorSlider.toInt()}'),
    );
  }

}