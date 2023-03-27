import 'package:flutter/material.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  String _userName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas de datos por el usuario'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearEntrada(),
          _crearEntradaPswd()
        ],
      ),
    );
  }

  Widget _crearEntrada() {
    return TextField(
      autofocus: true,
      textAlign: TextAlign.left,
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold, 
        ),

        cursorColor: const Color.fromARGB(255, 0, 0, 0),
        cursorRadius: const Radius.circular(10.0),
        cursorWidth: 1.0,
        maxLength: 10,
        obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)),
          hintText: "Enter name",
          labelText: "Name: ",

          // prefix: const CircularProgressIndicator(),

          icon: Icon(Icons.person),
          iconColor: Color.fromARGB(255, 13, 113, 152),
          ),
      onChanged: (valor) {
        _userName = valor;
        print(_userName);
      },
    );
  }

    Widget _crearEntradaPswd() {
    return TextField(
      autofocus: true,
      textAlign: TextAlign.left,
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold, 
        ),
        cursorColor: const Color.fromARGB(255, 0, 0, 0),
        cursorRadius: const Radius.circular(10.0),
         cursorWidth: 1.0,
        maxLength: 10,
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        // maxLength: 2,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)),
          hintText: "Enter password",
          labelText: "Password: ",

          // prefix: const CircularProgressIndicator(),

          icon: Icon(Icons.password),
          iconColor: Color.fromARGB(255, 13, 113, 152),
          ),
      onChanged: (valor) {
        _userName = valor;
        print(_userName);
      },
    );
  }



}