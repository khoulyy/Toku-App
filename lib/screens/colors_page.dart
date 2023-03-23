import "package:flutter/material.dart";
import 'package:toku_app/models/color.dart';
import 'package:toku_app/components/color_item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<ColorModel> colors = const [
    ColorModel(
        sound: 'assets/sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Burakku',
        enName: 'black'),
    ColorModel(
        sound: 'assets/sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'borwn'),
    ColorModel(
        sound: 'assets/sounds/colors/dustyyellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoi kiro',
        enName: 'dusty yellow'),
    ColorModel(
        sound: 'assets/sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gure',
        enName: 'gray'),
    ColorModel(
        sound: 'assets/sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green'),
    ColorModel(
        sound: 'assets/sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red'),
    ColorModel(
        sound: 'assets/sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Burakku',
        enName: 'black'),
    ColorModel(
        sound: 'assets/sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiroi',
        enName: 'white'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Family Members"),
        backgroundColor: const Color(0xff533D35),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ColorItem(color: colors[index]);
        },
      ),
    );
  }
}
