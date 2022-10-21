//import 'dart:html';
import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      // color: Color.fromARGB(93, 3, 49, 105),
      color: Colors.indigo[900],
      child: Container(
        margin: const EdgeInsets.fromLTRB(45, 50, 45, 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //NOMBRE APP
            Text(
              'T E C M A P',
              style: TextStyle(
                fontFamily: 'GMX',
                color: Colors.white,
                fontSize: 40,
              ),
            ),

            //BOTON IR
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: Color.fromARGB(111, 117, 129, 129),
                padding: EdgeInsets.symmetric(horizontal: 41, vertical: 20),
                // shadowColor: Colors.amber
              ),
              child: const Text(
                'Ir',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                ),
              ),
              onPressed: () {
                print('IR on');
                Navigator.of(context).pushNamed('/maping');
              },
            ),
          ],
        ),
      ),
    ));
  }
}
