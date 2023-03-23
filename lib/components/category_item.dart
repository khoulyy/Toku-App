import "package:flutter/material.dart";

class Category extends StatelessWidget {
  const Category({
    super.key,
    this.text,
    this.color,
    this.onTap,
  });
  final String? text;
  final Color? color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        color: color,
        padding: const EdgeInsets.all(16),
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
