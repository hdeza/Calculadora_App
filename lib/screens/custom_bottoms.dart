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
              child: const Text('AC'),
            ),
            FloatingActionButton(
              onPressed: () => porcent(),
              child: const Text('%'),
            ),
            FloatingActionButton(
              onPressed: () => delete(),
              child: Icon(Icons.arrow_back),
            ),
            FloatingActionButton(
              onPressed: () => operacion('/'),
              child: const Text('/'),
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
              child: const Text('7'),
            ),
            FloatingActionButton(
              onPressed: () => numeros('8'),
              child: const Text('8'),
            ),
            FloatingActionButton(
              onPressed: () => numeros('9'),
              child: const Text('9'),
            ),
            FloatingActionButton(
              onPressed: () => operacion('X'),
              child: const Text('X'),
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
              child: const Text('4'),
            ),
            FloatingActionButton(
              onPressed: () => numeros('5'),
              child: const Text('5'),
            ),
            FloatingActionButton(
              onPressed: () => numeros('6'),
              child: const Text('6'),
            ),
            FloatingActionButton(
              onPressed: () => operacion('-'),
              child: const Text('-'),
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
              child: const Text('1'),
            ),
            FloatingActionButton(
              onPressed: () => numeros('2'),
              child: const Text('2'),
            ),
            FloatingActionButton(
              onPressed: () => numeros('3'),
              child: const Text('3'),
            ),
            FloatingActionButton(
              onPressed: () => operacion('+'),
              child: const Text('+'),
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
              child: Text('N'),
            ),
            FloatingActionButton(
              onPressed: () => numeros('0'),
              child: const Text('0'),
            ),
            FloatingActionButton(
              onPressed: () => numeros('.'),
              child: const Text('.'),
            ),
            FloatingActionButton(
              onPressed: () => operacion('='),
              child: const Text('='),
            ),
          ],
        )
      ],
    );
  }
}
