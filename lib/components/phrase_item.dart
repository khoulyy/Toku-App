import 'package:flutter/material.dart';
import 'package:toku_app/models/phrase.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

class PhraseItem extends StatelessWidget {
  const PhraseItem({super.key, required this.phrase});
  final Phrase phrase;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: const Color(0xff409CC9),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(phrase.jpPhrase,
                    style: const TextStyle(color: Colors.white)),
                Text(phrase.enPhrase,
                    style: const TextStyle(color: Colors.white)),
              ],
            ),
          ),
          const Spacer(flex: 1),
          IconButton(
            onPressed: () {
              Audio.load(phrase.sound)
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
