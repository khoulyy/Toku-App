import "package:flutter/material.dart";
import 'package:toku_app/models/phrase.dart';
import 'package:toku_app/components/phrase_item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<Phrase> phrases = const [
    Phrase(
        sound: 'assets/sounds/phrases/dont_forget_to_subscribe.wav',
        jpPhrase: 'Kodoku suru koto o wasurenaide kudasai',
        enPhrase: 'dont forget to subscribe'),
    Phrase(
        sound: 'assets/sounds/phrases/i_love_programming.wav',
        jpPhrase: 'Watashi wa puroguramingu ga daisukidesu',
        enPhrase: 'i love programming'),
    Phrase(
        sound: 'assets/sounds/phrases/programming_is_easy.wav',
        jpPhrase: 'Puroguramingu wa kantandesu',
        enPhrase: 'programming is easy'),
    Phrase(
        sound: 'assets/sounds/phrases/where_are_you_going.wav',
        jpPhrase: 'Doko ni iku no',
        enPhrase: 'where are you going ?'),
    Phrase(
        sound: 'assets/sounds/phrases/what_is_your_name.wav',
        jpPhrase: 'Namae wa nandesu ka',
        enPhrase: 'what is your name ?'),
    Phrase(
        sound: 'assets/sounds/phrases/i_love_anime.wav',
        jpPhrase: 'Watashi wa anime ga daisukidesu',
        enPhrase: 'i love anime'),
    Phrase(
        sound: 'assets/sounds/phrases/how_are_you_feeling.wav',
        jpPhrase: 'Go kibun wa ikagadesu ka',
        enPhrase: 'how are your feeling ?'),
    Phrase(
        sound: 'assets/sounds/phrases/are_you_coming.wav',
        jpPhrase: 'Kimasu ka',
        enPhrase: 'are you coming ?'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phrases"),
        backgroundColor: const Color(0xff533D35),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhraseItem(phrase: phrases[index]);
        },
      ),
    );
  }
}
