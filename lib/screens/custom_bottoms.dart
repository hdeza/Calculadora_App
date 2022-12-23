import 'package:flutter/material.dart';

class CustomBottoms extends StatelessWidget {
  final Function contar;
  const CustomBottoms({Key? key, required this.contar}) : super(key: key);

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
            FloatingActionButton(onPressed: null),
            FloatingActionButton(onPressed: null),
            FloatingActionButton(onPressed: null),
          ],
        )
      ],
    );
  }
}
