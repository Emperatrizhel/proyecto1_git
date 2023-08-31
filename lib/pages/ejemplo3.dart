

import 'package:flutter/material.dart';

class ejemplo3  extends StatefulWidget{
  @override
  State<ejemplo3> createState() => _ejemplo3State();
}

class _ejemplo3State extends State<ejemplo3> {
  bool valor = false;

//oC = (oF - 32) * 5 / 9
  TextEditingController _ganados = TextEditingController();
  TextEditingController _perdidos = TextEditingController();
  TextEditingController _empatados = TextEditingController();

  int _resultado = 0;
  int _dato = 0;
  String _mensaje = "";
  bool _validar = false;

  void _calcular(){
    setState(() {
      if(_ganados.text.toString() == ""){
        _mensaje = "Campo obligatorio";
        _validar = true;
        _resultado = 0;

        return;
      }


      dato = int.parse(_ganados.text.toString());
      _resultado = (dato * 2) + 1 + 9 * 0;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('partidos ganados',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _partidos,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'N partidos',
                  hintText: 'Digite los partidos ganados ',
                  errorText: _partidos.text.toString()=="" ? _mensaje : null,
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.red,
                  )
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: _partidos,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'N partidos',
                  hintText: 'Digite los partidos PERDIDOS ',
                  errorText: _partidos.text.toString()=="" ? _mensaje : null,
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.red,
                  )
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _ganados,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'N partidos',
                  hintText: 'Digite los partidos EMPATADOS ',
                  errorText: _ganados.text.toString()=="" ? _mensaje : null,
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.red,
                  )
              ),
            ),
          ),
          SizedBox(height: 25,),
          Text('${_resultado.toStringAsFixed(2)}',
            style: TextStyle(
                fontSize: 50,
                color: Colors.grey,
                fontWeight: FontWeight.bold
            ),
          ),


          ElevatedButton(
              onPressed: (){
                _calcular();
              },
              child: Text('Calcular'))
        ],
      ),
    );
  }
}