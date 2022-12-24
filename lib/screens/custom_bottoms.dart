import 'package:flutter/material.dart';

class CustomBottoms extends StatelessWidget {
  final Function reset;
  final Function delete;
  final Function porcent;
  final Function numeros;
  final Function operacion;
  const CustomBottoms(
      {Key? key,
      required this.porcent,
      required this.delete,
      required this.numeros,
      required this.reset,
      required this.operacion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () => reset(),
              backgroundColor: Colors.blueAccent.shade100,
              child: const Text('AC', style: TextStyle(fontSize: 25)),
            ),
            FloatingActionButton(
              onPressed: () => porcent(),
              backgroundColor: Colors.blueAccent.shade100,
              child: const Text('%', style: TextStyle(fontSize: 25)),
            ),
            FloatingActionButton(
              onPressed: () => delete(),
              backgroundColor: Colors.blueAccent.shade100,
              child: const Icon(Icons.arrow_back),
            ),
            FloatingActionButton(
              onPressed: () => operacion('/'),
              backgroundColor: Colors.blueAccent.shade100,
              child: const Text('/', style: TextStyle(fontSize: 25)),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () => numeros('7'),
              backgroundColor: Colors.blueAccent.shade700,
              child: const Text(
                '7',
                style: TextStyle(fontSize: 25),
              ),
            ),
            FloatingActionButton(
              onPressed: () => numeros('8'),
              backgroundColor: Colors.blueAccent.shade700,
              child: const Text(
                '8',
                style: TextStyle(fontSize: 25),
              ),
            ),
            FloatingActionButton(
              onPressed: () => numeros('9'),
              backgroundColor: Colors.blueAccent.shade700,
              child: const Text('9', style: TextStyle(fontSize: 25)),
            ),
            FloatingActionButton(
              onPressed: () => operacion('X'),
              backgroundColor: Colors.blueAccent.shade100,
              child: const Text('X', style: TextStyle(fontSize: 25)),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () => numeros('4'),
              backgroundColor: Colors.blueAccent.shade700,
              child: const Text('4', style: TextStyle(fontSize: 25)),
            ),
            FloatingActionButton(
              onPressed: () => numeros('5'),
              backgroundColor: Colors.blueAccent.shade700,
              child: const Text('5', style: TextStyle(fontSize: 25)),
            ),
            FloatingActionButton(
              onPressed: () => numeros('6'),
              backgroundColor: Colors.blueAccent.shade700,
              child: const Text('6', style: TextStyle(fontSize: 25)),
            ),
            FloatingActionButton(
              onPressed: () => operacion('-'),
              backgroundColor: Colors.blueAccent.shade100,
              child: const Text('-', style: TextStyle(fontSize: 35)),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () => numeros('1'),
              backgroundColor: Colors.blueAccent.shade700,
              child: const Text('1', style: TextStyle(fontSize: 25)),
            ),
            FloatingActionButton(
              onPressed: () => numeros('2'),
              backgroundColor: Colors.blueAccent.shade700,
              child: const Text('2', style: TextStyle(fontSize: 25)),
            ),
            FloatingActionButton(
              onPressed: () => numeros('3'),
              backgroundColor: Colors.blueAccent.shade700,
              child: const Text('3', style: TextStyle(fontSize: 25)),
            ),
            FloatingActionButton(
              onPressed: () => operacion('+'),
              backgroundColor: Colors.blueAccent.shade100,
              child: const Text('+', style: TextStyle(fontSize: 30)),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const FloatingActionButton(
              onPressed: null,
              child: Icon(Icons.calculate_outlined, size: 30),
            ),
            FloatingActionButton(
              onPressed: () => numeros('0'),
              backgroundColor: Colors.blueAccent.shade700,
              child: const Text('0', style: TextStyle(fontSize: 25)),
            ),
            FloatingActionButton(
              onPressed: () => numeros('.'),
              backgroundColor: Colors.blueAccent.shade700,
              child: const Text('.', style: TextStyle(fontSize: 25)),
            ),
            FloatingActionButton(
              onPressed: () => operacion('='),
              backgroundColor: Colors.amber.shade600,
              child: const Text('=', style: TextStyle(fontSize: 40)),
            ),
          ],
        )
      ],
    );
  }
}
