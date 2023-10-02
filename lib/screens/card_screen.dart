import 'package:flutter/material.dart';

import '../Widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:  AppBar(
        title: Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox( height: 10,),
          CustomCardType2(imageUrl: 'https://www.escapemotions.com/images/mainpage/images/blog_posts_bg/landing-page_blog_93303113643.jpg', name: 'Primer tarjeta',),
          SizedBox( height: 10,),
          CustomCardType2(imageUrl: 'https://media.macphun.com/img/uploads/macphun/blog/2063/_1.jpeg?q=75&w=1710&h=906&resize=cover', name: 'Segunda tarjeta',),
          SizedBox( height: 10,),
          CustomCardType2(imageUrl: 'https://www.escapemotions.com/images/mainpage/images/blog_posts_bg/landing-page_blog_93303113643.jpg', name: 'Tercera Tarjeta',),
          SizedBox( height: 10,),
          CustomCardType2(imageUrl: 'https://media.macphun.com/img/uploads/macphun/blog/2063/_1.jpeg?q=75&w=1710&h=906&resize=cover', name: 'Cuarta tarjeta',),
        ],
      )
    );
  }
}

