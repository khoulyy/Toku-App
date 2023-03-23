import 'package:flutter/material.dart';
import 'package:toku_app/models/member.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

class FamilyItem extends StatelessWidget {
  const FamilyItem({super.key, required this.member});
  final Member member;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: const Color(0xff3A8C3B),
      child: Row(
        children: [
          Container(
            color: const Color(0xffFDF9DC),
            child: Image.asset(member.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(member.jpName,
                    style: const TextStyle(color: Colors.white)),
                Text(member.enName,
                    style: const TextStyle(color: Colors.white)),
              ],
            ),
          ),
          const Spacer(flex: 1),
          IconButton(
            onPressed: () {
              Audio.load(member.sound)
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
