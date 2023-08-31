import 'package:flutter/material.dart';

class ejemplo2 extends StatefulWidget{
  @override
  State<ejemplo2> createState() => _ejemplo2State();
}

class _ejemplo2State extends State<ejemplo2> {
  bool valor = false;
  @override
  Widget build(BuildContext context) {




    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text('',
              style: TextStyle(
                fontSize: 0,
                fontWeight: FontWeight.bold,
                color: Colors.green,

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:30,left: 40, right: 40),
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Firs Name',
                  hintText: 'enter your user account',

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(05.0)
                  ),
                ),
              ),

            ),Padding(
              padding: const EdgeInsets.only(top:30,left: 40, right: 40),
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  hintText: 'enter your user account',

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(05.0)
                  ),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.only(top:30,left: 40, right: 40),
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'yourmail@mail.com',

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(05.0)
                  ),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.only(top:30,left: 40, right: 40,bottom: 10),
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(

                  labelText: 'Password',
                  hintText: '00 000-000',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(05.0)
                  ),
                ),
              ),
            ),

            Row(
              children: [
                Checkbox(
                  value: this.valor,
                  onChanged: (value) {
                   // setState(() {
                      this.valor = value!;
                    }),


                Text('Aceptar los terminos')
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: this.valor,
                    onChanged: (value) {
                      // setState(() {
                      this.valor = value!;
                    }),


                Text('Estoy de acuerdo')
              ],
            ),


            ElevatedButton(
              child: Text('Registrar'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                // side: BorderSide(color: Colors.yellow, width: 5),
                textStyle: const TextStyle(
                    color: Colors.white, fontSize: 20, fontStyle: FontStyle.normal),
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                shadowColor: Colors.lightBlue,
              ),
              onPressed: () {},
            ),
            // SizedBox(
            //   width: double.maxFinite,
            //   child: ElevatedButton.icon(
            //     //Color: Colors.lightBlueAccent,
            //     onPressed: (){
            //       print('Diste Click');
            //     },
            //     label: Text("SEND",style: TextStyle(
            //       fontSize: 30,
            //       color: Colors.white,
            //     ),
            //     ),
            //     style: ElevatedButton.styleFrom(
            //         primary: Colors.indigo //elevated btton background color
            //     ),
            //     icon: Icon(Icons.arrow_forward),  //icon data for elevated button
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}