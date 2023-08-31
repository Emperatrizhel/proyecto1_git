import 'package:flutter/material.dart';

class ejemplo1 extends StatefulWidget{
  @override
  State<ejemplo1> createState() => _ejemplo1State();
}

class _ejemplo1State extends State<ejemplo1> {
  bool valor = false;
//oC = (oF - 32) * 5 / 9
  TextEditingController _gradosf = TextEditingController();
  double _resultado = 0.0;
  double dato = 0.0;
  String _mensaje = "";
  bool _validar = false;

  void _convert(){
    setState(() {
      if(_gradosf.text.toString() == ""){
        _mensaje = "Campo obligatorio";
        _validar = true;
        _resultado = 0.0;
        return;
      }


      dato = double.parse(_gradosf.text.toString());
      _resultado = (dato - 32) * 5 / 9;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Convertir oF a oC',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _gradosf,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'oF',
                  hintText: 'Digite un valor en oF',
                  errorText: _gradosf.text.toString()=="" ? _mensaje : null,
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
          Row(
            children: [
              Checkbox(
                value: this.valor,
                onChanged: (value) {
                  setState(() {
                    this.valor = value!;
                  });
                },
              ),
              Text('Aceptar los terminos')
            ],
          ),
          ElevatedButton(
              onPressed: (){
                _convert();
              },
              child: Text('Calcular'))
        ],
      ),
    );
  }
}