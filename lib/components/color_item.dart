import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:toku_app/models/color.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.color});
  final ColorModel color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: const Color(0xff3A8C3B),
      child: Row(
        children: [
          Container(
            color: const Color(0xffFDF9DC),
            child: Image.asset(color.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(color.jpName, style: const TextStyle(color: Colors.white)),
                Text(color.enName, style: const TextStyle(color: Colors.white)),
              ],
            ),
          ),
          const Spacer(flex: 1),
          IconButton(
            onPressed: () {
              Audio.load(color.sound)
                ..play()
                ..dispose();
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
