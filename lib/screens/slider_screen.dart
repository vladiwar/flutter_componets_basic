import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class sliderScreen extends StatefulWidget {
   
  const sliderScreen({Key? key}) : super(key: key);

  @override
  State<sliderScreen> createState() => _sliderScreenState();
}

class _sliderScreenState extends State<sliderScreen> {


  double _sliderValue = 100; 
  bool _checkValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
      
          Slider.adaptive(
            min: 50,
            max: 400,
            value: _sliderValue,
            activeColor:  AppTheme.primary,
           onChanged: _checkValue ? (value){
            _sliderValue = value;
            setState(() {});
           } : null
           ),
          /*Checkbox(
            value: _checkValue, 
            onChanged: (value) {
              _checkValue == true ? _checkValue = false : _checkValue = true; 
              setState(() {});
            }
           ),
           Switch(
              activeColor: AppTheme.primary,
              value: _checkValue, 
              onChanged: (value) => setState(() {_checkValue = value; })
              ),*/
          CheckboxListTile(
              title: Text('Habilitar Slider'),
              activeColor: AppTheme.primary,
            value: _checkValue, 
            onChanged: (value) => setState(() {_checkValue = value ?? true;
            })),
          SwitchListTile.adaptive(
                  title: Text('Habilitar Slider'),
              activeColor: AppTheme.primary,
            value: _checkValue, 
            onChanged: (value) => setState(() {_checkValue = value;})),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
               child: Image(
                image: NetworkImage('https://www.nicepng.com/png/full/350-3504787_ranger-png.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
                ),
             ),
           ),
            const SizedBox( height: 100,)
        ],
      ),
    );
  }
}