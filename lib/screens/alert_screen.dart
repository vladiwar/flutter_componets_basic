import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogoIOS ( BuildContext context){
    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: ( context ){
        return CupertinoAlertDialog(
           title: const Text('Titulo'),
           content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la alrta'),
              SizedBox( height: 10),
              FlutterLogo( size: 100)
            ]),
            actions: [
              TextButton(
                onPressed: ()=> Navigator.pop(context),
                child: const Text('Cancelar', style: TextStyle ( color: Colors.red),)
                ),
                TextButton(
                onPressed: ()=> Navigator.pop(context),
                child: const Text('Ok')
                )
            ],
        );
      }
    );
  }

  void displayDialogoAndroid (BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: ( context ) {

        return AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la alrta'),
              SizedBox( height: 10),
              FlutterLogo( size: 100)
            ]),
            actions: [
              TextButton(
                onPressed: ()=> Navigator.pop(context),
                child: const Text('Cancelar', style: TextStyle ( color: Colors.red),)
                ),
              TextButton(
                onPressed: ()=> Navigator.pop(context),
                child: const Text('Cancelar')
                )
            ],
          );
      }
      );

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          //style: ElevatedButton.styleFrom(
          //backgroundColor: primary,
          //shape: const StadiumBorder(),
          //elevation: 0
        //),
          child: const Padding(
            padding: EdgeInsets.symmetric( horizontal: 20, vertical: 15),
            child:  Text('Mostrar alerta', style: TextStyle(fontSize: 16),),
            ),
          //onPressed: () => displayDialogoAndroid (context),
          onPressed: () => !Platform.isAndroid ? 
          displayDialogoAndroid (context) : 
          displayDialogoIOS (context),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.close),
        onPressed: ()=> Navigator.pop( context )
      ),
    );
  }
}