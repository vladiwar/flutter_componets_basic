import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon( Icons.photo_album, color: AppTheme.primary),
            title: Text('Soy un título'),
            subtitle: Text('Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                onPressed: () {},
                 child: const Text('Cancelar'),
                 ),
                TextButton(
                onPressed: () {},
                 child: const Text('Ok'),
                 ),
              ],
            ),
          )
        ],
      ),
    );
  }
}