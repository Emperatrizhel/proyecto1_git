


import 'package:flutter/material.dart';
import 'ejemplo2.dart';
import 'ejemplo3.dart';
import 'ejemplo1.dart';
import 'inicio.dart';


class  MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //aca va la lógica de la aplicación
  int _itemSelect =0;

  _onItemSelect(int pos){
    Navigator.pop(context); // close the drawer
    setState(() {
      _itemSelect = pos;

    });
  }

  _getItemDrawer(int position){
    switch (position){
      case 0:
        return Inicio();
        break;
      case 1:
        return ejemplo1();
        break;
      case 2:
        return ejemplo2();
        break;
      case 3:
        return ejemplo3();
        break;
    }
  }


  //aca va el dieño de la UI

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Form'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Text(
                'MEGATEC - ZACATECOLUCA',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,
                color: Colors.purple,),
              title: Text('HOME',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple
                ),),
              onTap: (){
                _onItemSelect(0);
              },
            ),
            Divider(color: Colors.red,),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('Ejemplo 1'),
              onTap: (){
                _onItemSelect(1);
              },
            ),
            Divider(color: Colors.red,),
            ListTile(
                leading: Icon(Icons.arrow_forward_ios),
                title: Text('Ejemplo 2'),
                onTap: (){
                  _onItemSelect(2);
                }
            ),

            Divider(color: Colors.red,),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('Ejemplo 3'),
              onTap: (){
                _onItemSelect(3);
              },
            ),
            Divider(color: Colors.red,),
          ],
        ),
      ),

      body: _getItemDrawer(_itemSelect),
    );
  }
}

