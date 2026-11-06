// Vibe Coding Task 4, Slides 105 and 106: Reference solution for the Order Summary screen (not printed on a slide)
import 'package:flutter/material.dart';
import 'order.dart';

class OrderSummaryScreen extends StatelessWidget {
  const OrderSummaryScreen({super.key});

  static const String itemName = 'Vegetable Pizza';
  static const double unitPrice = 12.50;
  static const int quantity = 2;

  @override
  Widget build(BuildContext context) {
    final double total = orderTotal(unitPrice: unitPrice, quantity: quantity);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        title: const Text('Order Summary'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Item: $itemName'),
            const Text('Quantity: $quantity'),
            Text('Total: RM ${total.toStringAsFixed(2)}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
