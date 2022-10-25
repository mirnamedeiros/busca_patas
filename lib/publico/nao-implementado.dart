import 'package:flutter/material.dart';

class NaoImplementado extends StatefulWidget {
  const NaoImplementado({super.key, required this.title});

  final String title;

  @override
  State<NaoImplementado> createState() => _NaoImplementadoState();
}

class _NaoImplementadoState extends State<NaoImplementado> {

  @override
  Widget build(BuildContext context) {
   
    return const Material(

      child: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 120 , 30.0, 10.0),
        child:
        Text("Funcionalidade ainda não implementada", style: TextStyle(color: Color.fromARGB(255, 126, 107, 107),fontSize: 20)),
     
      ),
      );
  }

}