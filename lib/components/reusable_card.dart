import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    required this.colour,
    this.cardChild,
    this.onPress,
    Key? key,
  }) : super(key: key);

  final Color colour;
  final Widget? cardChild; // Nullable to allow the absence of a child.
  final VoidCallback? onPress; // Nullable callback for optional functionality.

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress, // No action if onPress is null.
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
