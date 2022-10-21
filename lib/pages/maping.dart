//import 'dart:html';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maping extends StatefulWidget {
  @override
  State<Maping> createState() => _MapingState();
}

class _MapingState extends State<Maping> {
  // late GoogleMapController mapController;

  // final LatLng _center = const LatLng(45.521563, -122.677433);

  //void _onMapCreated(GoogleMapController controller) {
  // mapController = controller;
  //}

  TextEditingController searchControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.indigo[900],
      child: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(45, 50, 45, 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              cajaBusqueda(),
              //informationBox(),
              /*Row(
                mainAxisAlignment: MainAxisAlignment.start,
                //mainAxisSize: MainAxisSize.min,
                children: [
                  contLocation(),
                  contButtonIcon(),
                  //cajaBusqueda(),
                ],
              ),*/
            ],
          ),
        ),
      ),
    ));
  }

  Widget informationBox() {
    return DraggableScrollableSheet(
      initialChildSize: 0.1,
      minChildSize: 0.1,
      maxChildSize: 0.5,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )),
        );
      },
    );
  }

  Widget informationDeps() {
    return Text(
      'datos extraidos',
    );
  }

  Widget cajaBusqueda() {
    return TextField(
      controller: searchControl,
      keyboardType: TextInputType.text,
      textAlign: TextAlign.left,
      style: TextStyle(
          color: Colors.grey[400], fontFamily: 'Monserrat', fontSize: 12),
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Colors.white, width: 5)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Colors.white, width: 5)),
        hintText: 'Busca aquí',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontFamily: 'Montserrat',
          fontSize: 15,
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }

  Widget contLocation() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Icon(
        Icons.location_on,
        color: Colors.grey,
        //size: 36,
      ),
    );
  }

  Widget contButtonIcon() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: IconButton(
        onPressed: () {
          print("ha sido presionado");
        },
        icon: const Icon(Icons.send),
        alignment: Alignment.centerLeft,
        //iconSize: 24,
      ),
    );
  }
}
