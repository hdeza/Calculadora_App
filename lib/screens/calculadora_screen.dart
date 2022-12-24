import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:counter_other/calculadora.dart';
import 'custom_bottoms.dart';

class CalculadoraScreen extends StatefulWidget {
  const CalculadoraScreen({super.key});

  @override
  State<CalculadoraScreen> createState() => _CalculadoraScreenState();
}

class _CalculadoraScreenState extends State<CalculadoraScreen> {
  String dato = '0';
  String operacion = '-1';
  Calculadora calculadora = Calculadora();
  void reset() {
    setState(() {
      dato = '0';
      operacion = '-1';
      calculadora.reset();
    });
  }

  void porcent() {
    setState(() {
      double valor = double.parse(dato) * 0.01;
      dato = '$valor';
    });
  }

  void delete() {
    setState(() {
      if (dato.contains('.')) {
        dato = dato.substring(0, dato.length - 1);
      } else {
        var valor = double.parse(dato);
        valor = valor * 0.1;
        int nuevo = valor.toInt();
        dato = '$nuevo';
      }
    });
  }

  void numeros(String num) {
    setState(() {
      if (dato != '0') {
        dato = '$dato$num';
      } else {
        dato = num;
      }
    });
  }

  void operacionFn(String operacion) {
    if (operacion != '=') {
      this.operacion = operacion;
      calculadora.setNum1 = dato;
      dato = '0';
    } else {
      calculadora.setNum2 = dato;
      switch (this.operacion) {
        case '+':
          calculadora.suma();
          break;
        case '-':
          calculadora.resta();
          break;
        case 'X':
          calculadora.multiplicar();
          break;
        case '/':
          calculadora.dividir();
          break;
        default:
      }
      formatnumber('${calculadora.getResult}');
      setState(() {});
    }
  }

  void formatnumber(String num) {
    double newNumero = double.parse(num);
    if (newNumero % 1 == 0) {
      int numEntero = newNumero.toInt();
      dato = '$numEntero';
    } else {
      dato = '$newNumero';
    }
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
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                    child: Text(
                  dato,
                  style: const TextStyle(fontSize: 40),
                  maxLines: 2,
                )),
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
                  reset: reset,
                  porcent: porcent,
                  delete: delete,
                  numeros: numeros,
                  operacion: operacionFn,
                )),
          )
        ],
      ),
    );
  }
}
