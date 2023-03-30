import 'package:componentes/ui/screens/alerts.dart';
import 'package:componentes/ui/screens/home_page_temp.dart';
import 'package:componentes/ui/screens/input_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App Componentes',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: const [
          //Locale('en', 'US'),
          Locale('es', 'MX'),
        ],
        //home: HomePageTemp(),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => const HomePageTemp(),
          'alert': (BuildContext context) => const AlertsScreen(),
          'inputs': (BuildContext context) => const InputsScreen(),
        },
        onGenerateRoute: (RouteSettings settings) {
          print('Ruta llamada: ${settings.name}');
          return MaterialPageRoute(
              builder: (BuildContext context) => const AlertsScreen());
        },
        theme: ThemeData.dark().copyWith(
          //Color primario
          primaryColor: Color.fromARGB(255, 8, 49, 162),
          appBarTheme: const AppBarTheme(
            color: Color.fromARGB(255, 8, 49, 162),
            elevation: 0,
          ),
        ));
  }
}