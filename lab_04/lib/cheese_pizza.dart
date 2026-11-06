// Lab Exercise 4.1, Slide 93: Detail screen for the Cheese Pizza
import 'package:flutter/material.dart';

class CheesePizzaScreen extends StatelessWidget {
  const CheesePizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Cheese Pizza'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/pizza_2.png',
              width: 200,
            ),
            const Text(
              'Cheese Pizza is a pizza with plenty of melted '
              'cheese on top of it.',
            ),
          ],
        ),
      ),
    );
  }
}
