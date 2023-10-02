import 'package:fl_components/router/app_routers.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const CardScreen(),
      initialRoute: AppRouter.initialRouter,
      routes: AppRouter.getAppRouters(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      theme: AppTheme.lightTheme
    );
  }
}