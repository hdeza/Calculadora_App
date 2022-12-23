import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_bottoms.dart';

class CalculadoraScreen extends StatefulWidget {
  const CalculadoraScreen({super.key});

  @override
  State<CalculadoraScreen> createState() => _CalculadoraScreenState();
}

class _CalculadoraScreenState extends State<CalculadoraScreen> {
  String dato = '0';

  void contar() {
    setState(() {
      double valor = double.parse(dato) + 1;
      dato = '$valor';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora Básica'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 6, 134, 208),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                      Color.fromARGB(255, 81, 200, 233),
                      Color.fromARGB(255, 6, 134, 208),
                    ]),
                border: Border(bottom: BorderSide(color: Colors.white))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '  =',
                  style: TextStyle(fontSize: 50),
                ),
                Text(dato, style: const TextStyle(fontSize: 50)),
              ],
            ),
          ),
          Expanded(
            child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: <Color>[
                      Color.fromARGB(255, 81, 200, 233),
                      Color.fromARGB(255, 6, 134, 208),
                    ])),
                child: CustomBottoms(
                  contar: contar,
                )),
          )
        ],
      ),
    );
  }
}
