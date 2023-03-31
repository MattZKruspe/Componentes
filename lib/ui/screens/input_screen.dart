import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  String _userName = '';
  String _password = '';
  String _email = '';
  String _fecha = '';
  final TextEditingController _inputFieldDateController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrada de datos por el usuario'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearEntradaNombre(),
          const Divider(),
          _crearEntradaPswd(),
          const Divider(),
          _crearEntradaemail(),
          const Divider(),
          _crearEntradaFecha(),
        ],
      ),
    );
  }

  Widget _crearEntradaNombre() {
    return TextField(
      autofocus: true,
      textAlign: TextAlign.left,
      style: const TextStyle(
        color: Colors.black45,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: const Color.fromARGB(255, 8, 49, 162),
      cursorRadius: const Radius.circular(9.0),
      cursorWidth: 3.0,
      //maxLength: 4,
      maxLines: null,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: "Pon aquí tu nombre",
        labelText: "Nombre:",
        // icono normal icon: Icon(Icons.person_4),
        prefixIcon: const Icon(Icons.person),
        // prefix: const CircularProgressIndicotor(),
        //iconColor: Color.fromARGB(255, 8, 49, 162)
      ),
      onChanged: (valor) {
        _userName = valor;
        print(_userName);
      },
    );
  }

  Widget _crearEntradaPswd() {
    return TextField(
      textAlign: TextAlign.left,
      style: const TextStyle(
        color: Colors.black45,
        fontWeight: FontWeight.bold,
      ),
      cursorColor:const  Color.fromARGB(255, 8, 49, 162),
      cursorRadius: const Radius.circular(9.0),
      cursorWidth: 3.0,
      maxLength: 8,
      obscureText: true,
      keyboardType: TextInputType.number,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: "Escribe tu contraseña",
        labelText: "Contraseña:",
        prefixIcon: const Icon(Icons.key_outlined),
        //suffixIcon: const Icon(Icons.key)
      ),
      onChanged: (valor) {
        _password = valor;
        print(_password);
      },
    );
  }

  Widget _crearEntradaemail() {
    return TextField(
      textAlign: TextAlign.left,
      style: const TextStyle(
        color: Colors.black45,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: const Color.fromARGB(255, 8, 49, 162),
      cursorRadius: const Radius.circular(9.0),
      cursorWidth: 3.0,
      keyboardType: TextInputType.number,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: "Escribe tu email",
        labelText: "E-mail:",
        prefixIcon: const Icon(Icons.mail_rounded),
        //suffixIcon: const Icon(Icons.key)
      ),
      onChanged: (valor) {
        _email = valor;
        print(_email);
      },
    );
  }

  Widget _crearEntradaFecha() {
    return TextField(
      controller:_inputFieldDateController,
      enableInteractiveSelection: false,
      textAlign: TextAlign.left,
      style: const TextStyle(
        color: Colors.black45,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: const  Color.fromARGB(255, 8, 49, 162),
      cursorRadius: const Radius.circular(9.0),
      cursorWidth: 3.0,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: "Escribe tu fecha de nacimiento",
        labelText: "Fecha de nacimiento:",
        prefixIcon: const Icon(Icons.calendar_month_rounded),
        //suffixIcon: const Icon(Icons.key)
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2014),
      lastDate: DateTime(2026),
    );
    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        print(_fecha);
        _fecha = DateFormat('dd-MM-yyyy').format(picked);
        _inputFieldDateController.text = _fecha;//Esta linea muestra la fecha en el TexField
      });
    }
  }
    Widget _crearDropDown(){
    return DropdownButton(
      items: const [],
      onChanged:(opt) {});
  }

  List<DropdownMenuItem<String>> getOptionsDropDown() {
    List<String> _lenguajes = ['Java', 'PHP', 'JavaScript', 'Dart'];
    List<DropdownMenuItem<String>> lista = List();
    _lenguajes.forEach((lenguaje) {
      lista.add(DropdownMenuItem(
        child: Text(lenguaje),
        value: lenguaje,
      ));
    });
    return lista;
  }
}
