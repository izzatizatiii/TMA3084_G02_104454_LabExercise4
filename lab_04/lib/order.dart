// Part 8, Slide 72: A function to test (orderTotal)
double orderTotal({
  required double unitPrice,
  required int quantity,
}) {
  if (quantity < 0) {
    throw ArgumentError('quantity must not be negative');
  }
  return unitPrice * quantity;
}
