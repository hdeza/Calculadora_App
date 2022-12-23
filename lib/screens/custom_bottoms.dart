import 'package:flutter/material.dart';

class CustomBottoms extends StatelessWidget {
  final Function contar;
  final Function porcent;
  const CustomBottoms({Key? key, required this.contar, required this.porcent})
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
              onPressed: () => contar(),
              child: const Text('+1'),
            ),
            FloatingActionButton(
              onPressed: () => porcent(),
              child: const Text('%'),
            ),
            FloatingActionButton(
              onPressed: null,
              child: Icon(Icons.arrow_back),
            ),
            FloatingActionButton(
              onPressed: null,
              child: Text('/'),
            ),
          ],
        )
      ],
    );
  }
}
