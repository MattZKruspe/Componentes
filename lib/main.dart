import 'package:componentes/ui/screens/alerts.dart';
import 'package:componentes/ui/screens/home_page_temp.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      // home: HomePageTemp(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const HomePageTemp(),
        'alert' : (BuildContext context) => const AlertScreen(),
      },
      onGenerateRoute: (RouteSettings settings){
        print('Ruta llamada: ${settings.name}');
        return MaterialPageRoute(
          builder: (BuildContext context) => const AlertScreen());
      },
    );
  }
}