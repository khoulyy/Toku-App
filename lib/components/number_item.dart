import 'package:flutter/material.dart';
import 'package:toku_app/models/number.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

class NumberItem extends StatelessWidget {
  const NumberItem({super.key, required this.number});
  final Number number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.orange,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFDF9DC),
            child: Image.asset(number.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(number.jpName,
                    style: const TextStyle(color: Colors.white)),
                Text(number.enName,
                    style: const TextStyle(color: Colors.white)),
              ],
            ),
          ),
          const Spacer(flex: 1),
          IconButton(
            onPressed: () {
              Audio.load(number.sound)
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
